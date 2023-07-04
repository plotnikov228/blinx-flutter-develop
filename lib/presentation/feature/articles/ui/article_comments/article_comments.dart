import 'package:auto_route/auto_route.dart';
import 'package:blinx/data/services/request_objects/comment/report_comment.dart';
import 'package:blinx/data/services/response_objects/articles/comments/comments_response.dart';
import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/feature/home/cubit/comments/comments_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:blinx/presentation/widgets/app_text_field.dart';
import 'package:blinx/presentation/widgets/utilities/focus_scope_dismissible.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

class ArticleComments extends StatefulWidget {
  const ArticleComments({super.key});

  @override
  State<ArticleComments> createState() => _ArticleCommentsState();
}

class _ArticleCommentsState extends State<ArticleComments> {
  @override
  void initState() {
    super.initState();
  }

  void unfocus(BuildContext context) {
    final focusScope = FocusScope.of(context);
    if (focusScope.hasFocus) {
      focusScope.unfocus();
    }
  }

  // var showCommentForm = false;
  CommentsResponse? replyTo;
  CommentsResponse? commentToEdit;
  TextEditingController commentController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final commentsCubit = BlocProvider.of<CommentsCubit>(context, listen: true);

    return FocusScopeDismissible(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: _appBar(context, commentsCubit),
        body: SafeArea(
          child: BlocBuilder<CommentsCubit, CommentsState>(
            buildWhen: (previous, current) {
              return previous != current;
            },
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        const SizedBox(height: 16),
                        commentForm(commentsCubit),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.75,
                          child: _commentsList(
                            state,
                            commentsCubit,
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  ListView _commentsList(CommentsState state, CommentsCubit commentsCubit) {
    var sortedList = List<CommentsResponse>.from(state.comments);
    sortedList.sort((a, b) {
      return b.updateDate.compareTo(a.updateDate);
    });
    return ListView.builder(
      itemCount: sortedList.length,
      itemBuilder: (context, index) {
        final comment = sortedList[index];
        return FutureBuilder<bool>(
          future: commentsCubit.isOwnerComment(comment.owner.id),
          builder: (context, snapshot) {
            return CommentWidget(
              comment: comment,
              owned: snapshot.data ?? false,
              toggleEdit: (editable) {
                setState(() {
                  replyTo = null;
                  commentToEdit = editable;
                  commentController.text = editable.content;
                });
              },
              toggleCommentForm: (comment) {
                setState(() {
                  replyTo = comment;
                });
              },
              unfocus: () {
                unfocus(context);
              },
              toggleLike: () {
                unfocus(context);
                if (comment.isLiked != null && comment.isLiked!) {
                  commentsCubit.unLikeComment(
                    comment.id.toString(),
                  );
                } else {
                  commentsCubit.likeComment(
                    comment.id.toString(),
                  );
                }
              },
            );
          }
        );
      },
    );
  }

  Widget commentForm(CommentsCubit commentsCubit) {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    var textFieldLabel = isEnglish ? 'Comment' : 'تعليق';
    if (replyTo != null) {
      textFieldLabel = isEnglish ? 'Reply to ${replyTo!.owner.username}' : 'الرد على ${replyTo!.owner.username}';
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.transparent,
                child: replyTo?.owner.avatar != null
                    ? AppNetworkImage(imageUrl: replyTo!.owner.avatar!)
                    : Assets.icons.profileIcon.svg(width: 90, height: 90),
              ),
            ),
            Expanded(
              flex: 5,
              child: AppTextField(
                controller: commentController,
                textAlign: TextAlign.center,
                labelText: textFieldLabel,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                hasCircularBorder: true,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(24)),
                child: GradientElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  onPressed: () {
                    if (replyTo == null && commentToEdit == null) {
                      commentsCubit.addComment(commentController.text);
                      _scrollController.animateTo(
                        0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.bounceIn,
                      );
                    } else if (commentToEdit != null) {
                      commentsCubit.editComment(commentController.text, commentToEdit!.id.toString());
                    } else {
                      commentsCubit.replyComment(
                        commentController.text,
                        replyTo!.id,
                      );
                    }
    
                    setState(() {
                      replyTo = null;
                      commentController.text = ',';
                      commentController.text = '';
                    });
                  },
                  gradient: AppGradients.ocean,
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  )),
                  child: Text(
                    isEnglish ? 'Send' : 'نشر',
                    style: AppTextStyles.body400Font18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context, CommentsCubit commentsCubit) {
    final appSharedPreferences = injector.get<AppPreferences>();
    var lang = appSharedPreferences.getLanguage;
    var count = commentsCubit.comments!.length.toString();
    return AppBar(
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () => context.router.pop(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Assets.icons.close.svg(),
        ),
      ),
      elevation: 0,
      centerTitle: false,
      backgroundColor: context.colors.background,
      title: AppText.body500Font20(
        lang == 'en' ? 'Comments ($count)' : 'التعليقات ($count)'

      ),
    );
  }
}

class CommentWidget extends StatefulWidget {
  const CommentWidget({
    super.key,
    required this.comment,
    required this.toggleLike,
    required this.owned,
    required this.toggleCommentForm,
    required this.toggleEdit,
    required this.unfocus,
  });
  final CommentsResponse comment;
  final VoidCallback toggleLike;
  final Function(CommentsResponse?) toggleCommentForm;
  final Function(CommentsResponse) toggleEdit;
  final bool owned;
  final Function unfocus;

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  bool showReplies = false;
  @override
  Widget build(BuildContext context) {
    final commentsCubit = BlocProvider.of<CommentsCubit>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _userAvatar(),
              Flexible(
                child: _commentBubble(),
              ),
              const SizedBox(width: 8),
              _commentActions(commentsCubit, widget.comment),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: MediaQuery.of(context).size.width * 0.2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _timeSinceLabel(),
                const SizedBox(width: 16),
                _replyAction(),
              ],
            ),
          ),
          _repliesWidget(),
          if (showReplies)
            ...widget.comment.replies
                .map(
                  (e) => ReplyWidget(
                    comment: e,
                    parentCommentId: widget.comment.id,
                    toggleCommentForm: () =>
                        widget.toggleCommentForm(widget.comment),
                    toggleLike: () {
                      if (widget.comment.isLiked != null &&
                          widget.comment.isLiked!) {
                        commentsCubit
                            .unLikeComment(e.id.toString());
                      } else {
                        commentsCubit.likeComment(e.id.toString());
                      }
                    },
                  ),
                )
                .toList(),
        ],
      ),
    );
  }

  InkWell _replyAction() {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    return InkWell(
      onTap: () {
        widget.toggleCommentForm(widget.comment);
      },
      child: Text(
        isEnglish ? 'Reply' : 'رد',
        style: AppTextStyles.body500.copyWith(
          fontSize: 14,
        ),
      ),
    );
  }

  Text _timeSinceLabel() {
    return Text(
      _timeSince(widget.comment.createDate),
      style: AppTextStyles.body13w300,
    );
  }
  
  int? selectedReasonIndex;
  Widget _commentActions(CommentsCubit commentsCubit, CommentsResponse comment) {
    return FutureBuilder<bool>(
      future: commentsCubit.isOwnerComment(widget.comment.owner.id),
      builder: (context, snapshot) {
        return Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                _likeWidget(),
                const SizedBox(width: 8),
                snapshot.data ?? false
                    ? _deleteConfirmWidget(context, commentsCubit, comment)
                    : _reportWidget(commentsCubit, comment),
              ],
            ),
          ],
        );
      }
    );
  }

  InkWell _reportWidget(CommentsCubit cubit, CommentsResponse comment) {
    var englishReasons = [
      'Annoying Emails',
      'Adult Content',
      'Hate speech or symbol',
      'Scamming or fraud',
      'I do not like it only',
      'Other'
    ];
    var arabicReasons = [
      'رسائل إلكترونية مزعجة',
      'محتوى للبالغين',
      'الكلام او الرموز الذي يحض على الكراهية',
      'احتيال او نصب',
      'لا احبه فقط',
      'اخرى',
    ];
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    var reasons =  isEnglish ? englishReasons : arabicReasons;
    selectedReasonIndex = null;

    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setS) {
                return AlertDialog(
                  backgroundColor: const Color(0xFF131313),
                  content: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...reasons.map((e) {
                          return Directionality(
                            textDirection: TextDirection.rtl,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Checkbox(
                                      activeColor: Colors.white,
                                      value: reasons.indexOf(e) ==
                                          selectedReasonIndex,
                                      onChanged: (onChanged) {
                                        setS(() {
                                          if (onChanged != null && onChanged) {
                                            selectedReasonIndex =
                                                reasons.indexOf(e);
                                          } else {
                                            selectedReasonIndex = null;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      e,
                                      style: AppTextStyles.body500.copyWith(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        Container(
                          height: 50,
                          width: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24)),
                          child: GradientElevatedButton(
                            clipBehavior: Clip.antiAlias,
                            onPressed: () {
                              var reason = ReportComment(reason: englishReasons[selectedReasonIndex ?? 0]);
                              cubit.reportComment(widget.comment.id.toString(), reason);
                              Navigator.pop(context);
                            },
                            gradient: AppGradients.ocean,
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            )),
                            child: Text(
                              isEnglish ? 'Send' : 'نشر',
                              style: AppTextStyles.body400Font18,
                            ),
                          ),
                        ),
            
                      ],
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      const Text(
                        'Report',
                        style: AppTextStyles.body500Font20,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Assets.icons.x.svg(),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: Assets.icons.flag.svg(height: 24, color: const Color(0xFFE75D84)),
    );
  }

  Widget _deleteConfirmWidget(BuildContext context, CommentsCubit commentsCubit, CommentsResponse comment) {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    return InkWell(
      onTap: () {
        final overlay = Overlay.of(context).context.findRenderObject();
        final button = context.findRenderObject() as RenderBox;
        final buttonOffset = button.localToGlobal(Offset.zero, ancestor: overlay);
        final buttonHeight = button.size.height;
        showMenu(
          context: context,
          // position: const RelativeRect.fromLTRB(0, 50, 0, 0),
           position: RelativeRect.fromLTRB(
            buttonOffset.dx,
            buttonOffset.dy - buttonHeight * 2.0,
            buttonOffset.dx + button.size.width,
            buttonOffset.dy,
          ),
          items: [
            PopupMenuItem(
              child: Text(
                isEnglish ? 'Edit' : 'تعديل',
                style: AppTextStyles.body300Font13,
              ),
              onTap: (){
                widget.toggleEdit(comment);
              },
            ),
            PopupMenuItem(
              child: Text(
                isEnglish ? 'Delete' : 'حذف',
                style: AppTextStyles.body300Font13.copyWith(
                  color: Colors.red
                ),
              ),
              onTap: () async {
                widget.unfocus();
                await Future.delayed(
                  const Duration(milliseconds: 50),
                  () async {
                    await _actionsDialog(isEnglish, commentsCubit, comment);
                  }
                );
              },
            ),
          ],
        );
      },
      child: Assets.icons.vectormoreHorizontal.svg(height: 8),
    );
  }

  Future<dynamic> _actionsDialog(bool isEnglish, CommentsCubit commentsCubit, CommentsResponse comment) {
    widget.unfocus();
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setS) {
              return AlertDialog(
                backgroundColor: const Color(0xFF131313),
                content: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        isEnglish ? 'Are you sure you want to delete this comment?' : 'هل انت متأكد من انك تريد حذف هذا التعليق ؟',
                        style: AppTextStyles.body300Font13,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 128,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24)),
                        child: GradientElevatedButton(
                          clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            commentsCubit.deleteComment(comment.id.toString());
                            Navigator.pop(context);
                          },
                          gradient: AppGradients.grandAfrika,
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          )),
                          child: Text(
                            isEnglish ? 'Delete' : 'حذف',
                            style: AppTextStyles.body400Font18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                title: Row(
                  children: <Widget>[
                    const Text(
                      'Delete',
                      style: AppTextStyles.body500Font20,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Assets.icons.x.svg(),
                    ),
                  ],
                ),
              );
            },
          );
        },
      );
  }


  Container _commentBubble() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF272727),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.comment.owner.preferred_username,
            style: AppTextStyles.body300Font13,
          ),
          const SizedBox(height: 8),
          Text(
            widget.comment.content,
            style: AppTextStyles.body13w300,
          ),
        ],
      ),
    );
  }

  CircleAvatar _userAvatar() {
    return CircleAvatar(
      radius: 28,
      backgroundColor: Colors.transparent,
      child: widget.comment.owner.avatar != null
          ? AppNetworkImage(imageUrl: widget.comment.owner.avatar!)
          : Assets.icons.profileIcon.svg(
              width: 90,
              height: 90,
            ),
    );
  }

  String _timeSince(DateTime dateTime) {
    var difference = DateTime.now().difference(dateTime);
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} ${isEnglish ? 's' : 'ث'}';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} ${isEnglish ? 'm' : 'د'}';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} ${isEnglish ? 'h' : 'س'}';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} ${isEnglish ? 'd' : 'يوم'}';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 7).floor()} ${isEnglish ? 'w' : 'اسابيع'}';
    } else {
      return '${(difference.inDays / 365).floor()} ${isEnglish ? 'y' : 'سنة'}';
    }
  }

  Visibility _repliesWidget() {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    return Visibility(
      visible: widget.comment.replies.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () {
              setState(() {
                showReplies = !showReplies;
              });
            },
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 32.0),
                  child: SizedBox(
                    width: 32,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                      endIndent: 16,
                    ),
                  ),
                ),
                Text(showReplies
                    ? isEnglish ? 'Hide Replies' : 'إخفاء الردود'
                    : '${isEnglish ? 'Show Replies' : 'إظهار الردود'} (${widget.comment.replies.length})'),
              ],
            )),
      ),
    );
  }


  String abbreviateNumber(num value) {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    var suffixes = <String>['', 'k', 'm'];
    var arabicSuffixes = <String>['', 'أ', 'م'];
    var suffixIndex = 0;

    while (value >= 1000 && suffixIndex < suffixes.length - 1) {
      suffixIndex++;
      value /= 1000;
    }
    return '${value.toStringAsFixed(0)} ${isEnglish ? suffixes[suffixIndex] : arabicSuffixes[suffixIndex]}';
  }

  InkWell _likeWidget() {
    return InkWell(
      onTap: () {
        widget.toggleLike();
      },
      child: Row(
        children: [
          widget.comment.isLiked != null && widget.comment.isLiked!
              ? Assets.icons.heartFilled.svg()
              : Assets.icons.heartOutlined.svg(
                  height: 16,
                ),
          const SizedBox(
            width: 4,
          ),
          Text(
            abbreviateNumber(num.parse(widget.comment.totalLikes.toString())),
            style: AppTextStyles.body300Font13,
          ),
          const SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}
class ReplyWidget extends StatelessWidget {
  ReplyWidget({
    super.key,
    required this.comment,
    required this.toggleCommentForm,
    required this.parentCommentId,
    required this.toggleLike,
  });
  final CommentsResponse comment;
  final VoidCallback toggleCommentForm;
  final VoidCallback toggleLike;
  final int parentCommentId;
 @override
  Widget build(BuildContext context) {
    final commentsCubit = BlocProvider.of<CommentsCubit>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _userAvatar(),
              Flexible(
                child: _commentBubble(),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _commentActions(context, commentsCubit, comment),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: MediaQuery.of(context).size.width * 0.2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _timeSinceLabel(),
                const SizedBox(width: 16),
                _replyAction(),
              ],
            ),
          ),
          
          
        ],
      ),
    );
  }

  InkWell _replyAction() {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    return InkWell(
      onTap: () {
        toggleCommentForm();
      },
      child: Text(
        isEnglish ? 'Reply' : 'رد',
        style: AppTextStyles.body500.copyWith(
          fontSize: 14,
        ),
      ),
    );
  }

  Text _timeSinceLabel() {
    return Text(
      _timeSince(comment.createDate),
      style: AppTextStyles.body13w300,
    );
  }
  
  int? selectedReasonIndex;
  Widget _commentActions(BuildContext context, CommentsCubit commentsCubit, CommentsResponse comment) {
    return FutureBuilder<bool>(
      future: commentsCubit.isOwnerComment(comment.owner.id),
      builder: (context, snapshot) {
        return Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                _likeWidget(context),
                const SizedBox(width: 8),
                snapshot.data ?? false
                    ? _deleteWidget(commentsCubit)
                    : _reportWidget(context, commentsCubit, comment),
              ],
            ),
          ],
        );
      }
    );
  }

  InkWell _reportWidget(BuildContext context, CommentsCubit cubit, CommentsResponse comment) {
    var englishReasons = [
      'Annoying Emails',
      'Adult Content',
      'Hate speech or symbol',
      'Scamming or fraud',
      'I do not like it only',
      'Other'
    ];
    var arabicReasons = [
      'رسائل إلكترونية مزعجة',
      'محتوى للبالغين',
      'الكلام او الرموز الذي يحض على الكراهية',
      'احتيال او نصب',
      'لا احبه فقط',
      'اخرى',
    ];
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    var reasons =  isEnglish ? englishReasons : arabicReasons;
    selectedReasonIndex = null;
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setS) {
                return AlertDialog(
                  backgroundColor: const Color(0xFF131313),
                  content: Directionality(
                    textDirection: TextDirection.ltr,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...reasons.map((e) {
                          return Directionality(
                            textDirection: TextDirection.rtl,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Checkbox(
                                      activeColor: Colors.white,
                                      value: reasons.indexOf(e) ==
                                          selectedReasonIndex,
                                      onChanged: (onChanged) {
                                        setS(() {
                                          if (onChanged != null && onChanged) {
                                            selectedReasonIndex =
                                                reasons.indexOf(e);
                                          } else {
                                            selectedReasonIndex = null;
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      e,
                                      style: AppTextStyles.body500.copyWith(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        Container(
                          height: 50,
                          width: 128,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24)),
                          child: GradientElevatedButton(
                            clipBehavior: Clip.antiAlias,
                            onPressed: () {
                              var reason = ReportComment(reason: englishReasons[selectedReasonIndex ?? 0]);
                              cubit.reportComment(comment.id.toString(), reason);
                            },
                            gradient: AppGradients.ocean,
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            )),
                            child: Text(
                              isEnglish ? 'Send' : 'نشر',
                              style: AppTextStyles.body400Font18,
                            ),
                          ),
                        ),
            
                      ],
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      const Text(
                        'Report',
                        style: AppTextStyles.body500Font20,
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Assets.icons.x.svg(),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
      child: Assets.icons.flag.svg(height: 24, color: const Color(0xFFE75D84)),
    );
  }

  Container _commentBubble() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF272727),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            comment.owner.preferred_username,
            style: AppTextStyles.body300Font13,
          ),
          const SizedBox(height: 8),
          Text(
            comment.content,
            style: AppTextStyles.body13w300,
          ),
        ],
      ),
    );
  }

  CircleAvatar _userAvatar() {
    return CircleAvatar(
      radius: 28,
      backgroundColor: Colors.transparent,
      child: comment.owner.avatar != null
          ? AppNetworkImage(imageUrl: comment.owner.avatar!)
          : Assets.icons.profileIcon.svg(
              width: 90,
              height: 90,
            ),
    );
  }

  String _timeSince(DateTime dateTime) {
    var difference = DateTime.now().difference(dateTime);
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} ${isEnglish ? 's' : 'ث'}';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} ${isEnglish ? 'm' : 'د'}';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} ${isEnglish ? 'h' : 'س'}';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} ${isEnglish ? 'd' : 'يوم'}';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 7).floor()} ${isEnglish ? 'w' : 'اسابيع'}';
    } else {
      return '${(difference.inDays / 365).floor()} ${isEnglish ? 'y' : 'سنة'}';
    }
  }

  InkWell _deleteWidget(CommentsCubit commentsCubit) {
    return InkWell(
      onTap: () {
        commentsCubit.deleteComment(comment.id.toString());
      },
      child: Assets.icons.delete.svg(height: 24, color: Colors.white),
    );
  }

  String abbreviateNumber(num value) {
    final appSharedPreferences = injector.get<AppPreferences>();
    var locale = appSharedPreferences.getLanguage;
    var isEnglish = locale == 'en';
    var suffixes = <String>['', 'k', 'm'];
    var arabicSuffixes = <String>['', 'أ', 'م'];
    var suffixIndex = 0;

    while (value >= 1000 && suffixIndex < suffixes.length - 1) {
      suffixIndex++;
      value /= 1000;
    }
    return '${value.toStringAsFixed(0)} ${isEnglish ? suffixes[suffixIndex] : arabicSuffixes[suffixIndex]}';
  }

  InkWell _likeWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        final commentsCubit = BlocProvider.of<CommentsCubit>(context);
        if (comment.isLiked!) {
          commentsCubit.unlikeReply(parentCommentId.toString(), comment.id.toString());
        } else {
          commentsCubit.likeReply(parentCommentId.toString(), comment.id.toString());
        }
      },
      child: Row(
        children: [
          comment.isLiked != null && comment.isLiked!
              ? Assets.icons.heartFilled.svg()
              : Assets.icons.heartOutlined.svg(
                  height: 16,
                ),
          const SizedBox(
            width: 4,
          ),
          Text(
            abbreviateNumber(num.parse(comment.totalLikes.toString())),
            style: AppTextStyles.body300Font13,
          ),
          const SizedBox(
            width: 4,
          ),
        ],
      ),
    );
  }
}
