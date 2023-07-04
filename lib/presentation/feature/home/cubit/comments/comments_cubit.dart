import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/request_objects/comment/add_comment.dart';
import 'package:blinx/data/services/request_objects/comment/reply_comment.dart';
import 'package:blinx/data/services/request_objects/comment/report_comment.dart';
import 'package:blinx/data/services/response_objects/articles/comments/comments_response.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:blinx/domain/repostories/articles_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
part 'comments_state.dart';
part 'comments_cubit.freezed.dart';

@injectable
class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit(
    this.context,
    this._authPreferences,
    this.comments,
    this.articlePath,
    this._userPreferences,
  ) : super(const CommentsState()) {
    getAllComments();
  }
  final BuildContext context;
  final UserPreferences _userPreferences;

  List<CommentsResponse>? comments = [];
  final String articlePath;
  final AuthPreferences _authPreferences;

  Future<bool> isOwnerComment(String owner) async {
    var result = true;
    await _userPreferences.getUser().then(
      (currentUser) {
        result = currentUser?.userId.toString() == owner;
      },
    );
    return result;
  }

  void getAllComments() {
    if (!state.status.isLoading) {
      emit(state.copyWith(status: const BaseStatus.loading()));
      GetAllArticleCommentsUseCase(
        injector.get<ArticlesRepository>(),
        articlePath,
      ).call().then((value) {
        _setComments(value);
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: value,
          ),
        );
      });
    }
  }

  void _setComments(List<CommentsResponse> comments) {
    this.comments = comments;
  }

  List<CommentsResponse> getComments() {
    return comments ?? [];
  }

  void addComment(String content) {
    _loadAuthState();
    emit(state.copyWith(status: const BaseStatus.loading()));
    AddArticleCommentUseCase(
      injector.get<ArticlesRepository>(),
      articlePath,
      AddCommentBody(
        content: content,
      ),
    ).call().then(
      (value) {
        comments?.add(value.copyWith(totalLikes: 0));
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: comments!,
          ),
        );
      },
    );
  }

  void editComment(String content, String commentId) {
    emit(state.copyWith(status: const BaseStatus.loading()));
    EditArticleCommentUseCase(
      injector.get<ArticlesRepository>(),
      commentId,
      AddCommentBody(
        content: content,
      ),
    ).call().then(
      (value) {
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: comments!,
          ),
        );
        getAllComments();
      },
    );
  }

  void replyComment(String content, int commentId) {
    _loadAuthState();
    emit(state.copyWith(status: const BaseStatus.loading()));
    ReplyArticleCommentUseCase(
      injector.get<ArticlesRepository>(),
      commentId.toString(),
      ReplyCommentBody(
        content: content,
      ),
    ).call().then(
      (value) {
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: comments!,
          ),
        );
      },
    ).whenComplete(() => getAllComments());
  }

  void likeComment(String commentId) {
    _loadAuthState();
    emit(state.copyWith(status: const BaseStatus.loading()));
    LikeArticleCommentUseCase(
      injector.get<ArticlesRepository>(),
      commentId,
    ).call().then(
      (value) {
        final commentIndex = comments!.indexWhere((comment) => comment.id.toString() == commentId);
        if (commentIndex >= 0) {
          comments![commentIndex] = value;
        }
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: comments!,
          ),
        );
      },
    );
  }

  void likeReply(String commentId, String replyId) {
  _loadAuthState();
    emit(state.copyWith(status: const BaseStatus.loading()));
  LikeArticleCommentUseCase(
    injector.get<ArticlesRepository>(),
    replyId,
  ).call().then(
    (value) {
      emit(state.copyWith(status: const BaseStatus.success()));
      getAllComments();
    },
  );
  }

  void unlikeReply(String commentId, String replyId) {
  _loadAuthState();
  UnLikeArticleCommentUseCase(
    injector.get<ArticlesRepository>(),
    replyId,
  ).call().then(
    (value) {
      emit(state.copyWith(status: const BaseStatus.success()));
      getAllComments();
    },
  );
}


  void reportComment(String commentId, ReportComment reason) {
    _loadAuthState();
    emit(state.copyWith(status: const BaseStatus.loading()));
    ReportCommentUseCase(injector.get<ArticlesRepository>(), commentId, reason)
        .call()
        .then(
      (value) {
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: comments!,
          ),
        );
      },
    );
  }

  void unLikeComment(String commentId) {
  _loadAuthState();
  emit(state.copyWith(status: const BaseStatus.loading()));
  UnLikeArticleCommentUseCase(
    injector.get<ArticlesRepository>(),
    commentId,
  ).call().then(
    (value) {
      final commentIndex = comments!.indexWhere((comment) => comment.id.toString() == commentId);
      if (commentIndex >= 0) {
        comments![commentIndex] = value;
      }
      return emit(
        state.copyWith(
          status: const BaseStatus.success(),
          comments: comments!,
        ),
      );
    },
  );
}

  void deleteComment(String commentId) {
    _loadAuthState();
    emit(state.copyWith(status: const BaseStatus.loading()));
    DeleteCommentUseCase(
      injector.get<ArticlesRepository>(),
      commentId,
    ).call().then(
      (value) {
        emit(state.copyWith(status: const BaseStatus.success()));
        getAllComments();
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            comments: comments!,
          ),
        );
      },
    );
  }

  void _loadAuthState() {
    _authPreferences.subscribeToLoginState().listen((isAuthenticated) {
      if (!_authPreferences.isLoggedIn()) {
        context.router.pushNamed('/login');
      }
      if (isAuthenticated) {
        
      } else {
        emit(
          state.copyWith(
              // likedItems: {},
              ),
        );
      }
    });
  }
}

@injectable
class GetAllArticleCommentsUseCase
    extends FutureOutputUseCase<List<CommentsResponse>> {
  final ArticlesRepository _articlesRepository;
  final String articleId;

  GetAllArticleCommentsUseCase(this._articlesRepository, this.articleId);

  @override
  Future<List<CommentsResponse>> call() =>
      _articlesRepository.getAllComments(articleId);
}

@injectable
class AddArticleCommentUseCase extends FutureOutputUseCase<CommentsResponse> {
  final ArticlesRepository _articlesRepository;
  final String articleId;
  final AddCommentBody body;

  AddArticleCommentUseCase(this._articlesRepository, this.articleId, this.body);

  @override
  Future<CommentsResponse> call() => _articlesRepository.addComment(
        articleId,
        AddCommentBody(
          content: body.content,
        ),
      );
}

@injectable
class EditArticleCommentUseCase extends FutureOutputUseCase<CommentsResponse> {
  final ArticlesRepository _articlesRepository;
  final String commentId;
  final AddCommentBody body;

  EditArticleCommentUseCase(this._articlesRepository, this.commentId, this.body);

  @override
  Future<CommentsResponse> call() => _articlesRepository.addComment(
        commentId,
        AddCommentBody(
          content: body.content,
        ),
      );
}

@injectable
class ReplyArticleCommentUseCase extends FutureOutputUseCase<CommentsResponse> {
  final ArticlesRepository _articlesRepository;
  final String commentId;
  final ReplyCommentBody body;

  ReplyArticleCommentUseCase(
      this._articlesRepository, this.commentId, this.body);

  @override
  Future<CommentsResponse> call() =>
      _articlesRepository.commentReply(commentId, body);
}

@injectable
class DeleteCommentUseCase extends FutureOutputUseCase<void> {
  final ArticlesRepository _articlesRepository;
  final String commentId;

  DeleteCommentUseCase(this._articlesRepository, this.commentId);

  @override
  Future<void> call() => _articlesRepository.deleteComment(commentId);
}

@injectable
class LikeArticleCommentUseCase extends FutureOutputUseCase<CommentsResponse> {
  final ArticlesRepository _articlesRepository;
  final String commentId;

  LikeArticleCommentUseCase(this._articlesRepository, this.commentId);

  @override
  Future<CommentsResponse> call() => _articlesRepository.likeComment(
        commentId,
      );
}

@injectable
class ReportCommentUseCase extends FutureOutputUseCase<void> {
  final ArticlesRepository _articlesRepository;
  final String commentId;
  final ReportComment reason;

  ReportCommentUseCase(
    this._articlesRepository,
    this.commentId,
    this.reason,
  );

  @override
  Future<CommentsResponse> call() => _articlesRepository.reportComment(
        commentId,
        reason,
      );
}

@injectable
class UnLikeArticleCommentUseCase
    extends FutureOutputUseCase<CommentsResponse> {
  final ArticlesRepository _articlesRepository;
  final String commentId;

  UnLikeArticleCommentUseCase(this._articlesRepository, this.commentId);

  @override
  Future<CommentsResponse> call() => _articlesRepository.unLikeComment(
        commentId,
      );
}
