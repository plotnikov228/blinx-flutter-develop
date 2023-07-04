// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:flutter/widgets.dart' as _i30;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api/api_config.dart' as _i4;
import '../data/repositories/collection/base_collection_repository.dart'
    as _i27;
import '../data/repositories/collection/collection_remote_datasource.dart'
    as _i25;
import '../data/repositories/moments/base_moments_repository.dart' as _i124;
import '../data/repositories/storyteller/base_storyteller_repository.dart'
    as _i98;
import '../data/repositories/storyteller/storyteller_remote_datasource.dart'
    as _i96;
import '../data/services/http_service/articles/articles_repository_impl.dart'
    as _i9;
import '../data/services/http_service/articles/data_source/remote/articles_remote_data_source.dart'
    as _i6;
import '../data/services/http_service/auth/base_auth_service.dart' as _i15;
import '../data/services/http_service/auth/source/local/auth_local_data_source.dart'
    as _i10;
import '../data/services/http_service/auth/source/remote/auth_remote_data_source.dart'
    as _i13;
import '../data/services/http_service/avatars/avatars_repository_impl.dart'
    as _i104;
import '../data/services/http_service/avatars/data_source/remote/avatars_remote_data_source.dart'
    as _i17;
import '../data/services/http_service/categories/categories_repository_impl.dart'
    as _i20;
import '../data/services/http_service/categories/data_source/remote/categories_remote_data_source.dart'
    as _i18;
import '../data/services/http_service/content/content_repository_impl.dart'
    as _i34;
import '../data/services/http_service/content/source/remote/content_remote_data_source.dart'
    as _i32;
import '../data/services/http_service/moments/base_moments_service.dart'
    as _i66;
import '../data/services/http_service/notifications/data_source/remote/notifications_remote_data_source.dart'
    as _i68;
import '../data/services/http_service/notifications/notifications_repository_impl.dart'
    as _i70;
import '../data/services/http_service/preferences/preferences_repository_impl.dart'
    as _i76;
import '../data/services/http_service/preferences/source/remote/preferences_remote_data_source.dart'
    as _i74;
import '../data/services/http_service/reels/reels_repository_impl.dart' as _i80;
import '../data/services/http_service/reels/source/remote/reels_remote_data_source.dart'
    as _i78;
import '../data/services/request_objects/comment/add_comment.dart' as _i36;
import '../data/services/request_objects/comment/reply_comment.dart' as _i84;
import '../data/services/request_objects/comment/report_comment.dart' as _i85;
import '../data/services/response_error.dart' as _i62;
import '../data/services/response_objects/articles/comments/comments_response.dart'
    as _i31;
import '../domain/entities/email.dart' as _i38;
import '../domain/entities/password.dart' as _i39;
import '../domain/entities/user.dart' as _i73;
import '../domain/entities/username.dart' as _i40;
import '../domain/preferences/app_preferences.dart' as _i94;
import '../domain/preferences/auth_preferences.dart' as _i11;
import '../domain/preferences/user_preferences.dart' as _i12;
import '../domain/repostories/articles_repository.dart' as _i8;
import '../domain/repostories/avatar_repository.dart' as _i103;
import '../domain/repostories/categories_repository.dart' as _i19;
import '../domain/repostories/collections_repository.dart' as _i26;
import '../domain/repostories/content_repository.dart' as _i33;
import '../domain/repostories/moments_repository.dart' as _i123;
import '../domain/repostories/notifications_repository.dart' as _i69;
import '../domain/repostories/preferences_repository.dart' as _i75;
import '../domain/repostories/reels_repository.dart' as _i79;
import '../domain/repostories/story_tellers_repository.dart' as _i97;
import '../domain/services/auth_service.dart' as _i14;
import '../domain/services/moments_service.dart' as _i65;
import '../domain/usecases/articles/article_like_usecase.dart' as _i101;
import '../domain/usecases/articles/get_all_liked_articles_usecase.dart'
    as _i44;
import '../domain/usecases/articles/get_articles_usecase.dart' as _i45;
import '../domain/usecases/articles/get_category_articles_usecase.dart' as _i46;
import '../domain/usecases/articles/get_collection_articles_usecase.dart'
    as _i47;
import '../domain/usecases/articles/get_liked_articles_usecase.dart' as _i49;
import '../domain/usecases/articles/get_storyteller_articles_usecase.dart'
    as _i53;
import '../domain/usecases/articles/get_you_articles_usecase.dart' as _i55;
import '../domain/usecases/articles/like_article_usecase.dart' as _i58;
import '../domain/usecases/articles/unlike_article_usecase.dart' as _i100;
import '../domain/usecases/auth/change_password_usecase.dart' as _i21;
import '../domain/usecases/auth/get_streaming_user_usecase.dart' as _i54;
import '../domain/usecases/auth/login_with_email_and_password_usecase.dart'
    as _i63;
import '../domain/usecases/auth/logout_use_case.dart' as _i64;
import '../domain/usecases/auth/registration_usecase.dart' as _i82;
import '../domain/usecases/auth/save_avatars_usecase.dart' as _i87;
import '../domain/usecases/auth/validate_email_usecase.dart' as _i24;
import '../domain/usecases/avatars/get_avatars_usecase.dart' as _i112;
import '../domain/usecases/categories/get_all_categories_usecase.dart' as _i43;
import '../domain/usecases/categories/get_liked_categories_usecase.dart'
    as _i50;
import '../domain/usecases/categories/like_categories_usecase.dart' as _i59;
import '../domain/usecases/categories/replace_liked_categories_usecase.dart'
    as _i83;
import '../domain/usecases/change_password/change_password_usecase.dart'
    as _i22;
import '../domain/usecases/collection/collections_usecase.dart' as _i28;
import '../domain/usecases/content/get_life_contents_usecase.dart' as _i48;
import '../domain/usecases/content/get_more_contents_usecase.dart' as _i51;
import '../domain/usecases/content/get_now_contents_usecase.dart' as _i52;
import '../domain/usecases/explore/search_articles_usecase.dart' as _i89;
import '../domain/usecases/moments/get_moments_usecase.dart' as _i135;
import '../domain/usecases/moments/like_moment_usecase.dart' as _i137;
import '../domain/usecases/moments/mark_moment_as_seen_usecase.dart' as _i138;
import '../domain/usecases/moments/unlike_moment_usecase.dart' as _i131;
import '../domain/usecases/notifications/get_all_notifications_usecase.dart'
    as _i111;
import '../domain/usecases/notifications/mark_notification_as_read_usecase.dart'
    as _i122;
import '../domain/usecases/personal_details/delete_account_usecase.dart'
    as _i35;
import '../domain/usecases/personal_details/save_personal_details_usecase.dart'
    as _i88;
import '../domain/usecases/preferences/get_email_preferences_usecase.dart'
    as _i114;
import '../domain/usecases/preferences/get_notification_preferences_usecase.dart'
    as _i117;
import '../domain/usecases/preferences/set_email_preferences_usecase.dart'
    as _i91;
import '../domain/usecases/preferences/set_notification_preferences_usecase.dart'
    as _i92;
import '../domain/usecases/reels/get_reels_usecase.dart' as _i118;
import '../domain/usecases/reset_password/forgot_password_usecase.dart' as _i42;
import '../domain/usecases/storyteller/follow_storytellers_usecase.dart'
    as _i110;
import '../domain/usecases/storyteller/get_storytellers_usecase.dart' as _i119;
import '../domain/usecases/storyteller/unfollow_storytellers_usecase.dart'
    as _i99;
import '../domain/usecases/validate_email_usecase.dart' as _i23;
import '../presentation/common/base_status/base_status.dart' as _i41;
import '../presentation/common/cubit/auth/authorization_cubit.dart' as _i16;
import '../presentation/common/cubit/reels_loop/reels_loop_cubit.dart' as _i77;
import '../presentation/common/cubit/theme/app_theme_cubit.dart' as _i5;
import '../presentation/feature/explore/cubit/explore_all_categories_cubit.dart'
    as _i108;
import '../presentation/feature/explore/cubit/explore_search_cubit.dart'
    as _i109;
import '../presentation/feature/home/category_details/cubit/get_category_articles_cubit.dart'
    as _i113;
import '../presentation/feature/home/cubit/comments/comments_cubit.dart'
    as _i29;
import '../presentation/feature/home/cubit/follow_story_teller_cubit.dart'
    as _i133;
import '../presentation/feature/home/cubit/get_story_teller_cubit.dart'
    as _i136;
import '../presentation/feature/home/cubit/home_ab_cubit.dart' as _i56;
import '../presentation/feature/home/cubit/like_article_cubit.dart' as _i121;
import '../presentation/feature/home/home_feed/cubit/now_cubit.dart' as _i71;
import '../presentation/feature/home/life/cubit/life_cubit.dart' as _i57;
import '../presentation/feature/home/more/cubit/more_cubit.dart' as _i67;
import '../presentation/feature/home/profile/activity/likes_tab/cubit/get_liked_articles_cubit.dart'
    as _i115;
import '../presentation/feature/home/profile/activity/story_tellers_tab/cubit/storytellers_articles_cubit.dart'
    as _i95;
import '../presentation/feature/home/profile/edit_avatar/cubit/get_avatars_teller_cubit.dart'
    as _i134;
import '../presentation/feature/home/profile/edit_avatar/cubit/save_avatars_teller_cubit.dart'
    as _i129;
import '../presentation/feature/home/profile/manage_account/password_tab/cubit/change_password_cubit.dart'
    as _i105;
import '../presentation/feature/home/profile/manage_account/personal_details_tab/cubit/personal_details_cubit.dart'
    as _i72;
import '../presentation/feature/home/profile/preferences/emails_tab/cubit/email_preference_cubit.dart'
    as _i132;
import '../presentation/feature/home/profile/preferences/interests_tab/cubit/interests_cubit.dart'
    as _i120;
import '../presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart'
    as _i125;
import '../presentation/feature/home/reels/cubit/reels_cubit.dart' as _i128;
import '../presentation/feature/home/reels_details/cubit/article_like_cubit.dart'
    as _i130;
import '../presentation/feature/home/reels_details/cubit/reel_details_cubit.dart'
    as _i127;
import '../presentation/feature/home/you/cubit/collection_cubit.dart' as _i106;
import '../presentation/feature/home/you/you_page_logged_in/collections_details/cubit/collections_articles_cubit.dart'
    as _i107;
import '../presentation/feature/home/you/you_page_logged_in/cubit/articles_by_categories_cubit.dart'
    as _i102;
import '../presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_cubit.dart'
    as _i116;
import '../presentation/feature/home/you/you_page_logged_in/cubit/liked_categories_cubit.dart'
    as _i60;
import '../presentation/feature/login/cubit/login_cubit.dart' as _i61;
import '../presentation/feature/moments/cubit/moments_cubit.dart' as _i139;
import '../presentation/feature/notifications/cubit/notifications_cubit.dart'
    as _i126;
import '../presentation/feature/register/cubit/finish_registration_cubit.dart'
    as _i37;
import '../presentation/feature/register/register_email_dialog/cubit/register_email_cubit.dart'
    as _i81;
import '../presentation/feature/reset_password/cubit/reset_password_cubit.dart'
    as _i86;
import '../presentation/feature/see_all_articles/cubit/see_all_articles_cubit.dart'
    as _i90;
import '../presentation/feature/splash/cubit/splash_cubit.dart' as _i93;
import '../presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.$AppRouter>(() => _i3.$AppRouter());
  gh.factory<_i4.ApiConfig>(() => _i4.ApiConfig());
  gh.factory<_i5.AppThemeCubit>(() => _i5.AppThemeCubit());
  gh.lazySingleton<_i6.ArticlesRemoteDataSource>(
      () => _i6.ArticlesRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i8.ArticlesRepository>(
      () => _i9.ArticlesRepositoryImpl(get<_i6.ArticlesRemoteDataSource>()));
  gh.lazySingleton<_i10.AuthLocalDataSource>(() => _i10.AuthLocalDataSource(
        get<_i11.AuthPreferences>(),
        get<_i12.UserPreferences>(),
      ));
  gh.lazySingleton<_i13.AuthRemoteDataSource>(
      () => _i13.AuthRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i14.AuthService>(() => _i15.BaseAuthService(
        get<_i13.AuthRemoteDataSource>(),
        get<_i10.AuthLocalDataSource>(),
      ));
  gh.singleton<_i16.AuthorizationCubit>(
      _i16.AuthorizationCubit(get<_i11.AuthPreferences>()));
  gh.lazySingleton<_i17.AvatarsRemoteDataSource>(
      () => _i17.AvatarsRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i18.CategoriesRemoteDataSource>(
      () => _i18.CategoriesRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i19.CategoriesRepository>(() =>
      _i20.CategoriesRepositoryImpl(get<_i18.CategoriesRemoteDataSource>()));
  gh.factory<_i21.ChangePasswordUseCase>(
      () => _i21.ChangePasswordUseCase(get<_i14.AuthService>()));
  gh.factory<_i22.ChangePasswordUseCase>(() => _i22.ChangePasswordUseCase());
  gh.lazySingleton<_i23.CheckEmailAlreadyRegisteredUseCase>(
      () => _i23.CheckEmailAlreadyRegisteredUseCase());
  gh.lazySingleton<_i24.CheckEmailAlreadyResgisteredUseCase>(
      () => _i24.CheckEmailAlreadyResgisteredUseCase());
  gh.singleton<_i25.CollectionRemoteDatasource>(
      _i25.CollectionRemoteDatasource(get<_i7.Dio>()));
  gh.factory<_i26.CollectionsRepository>(() =>
      _i27.BaseCollectionRepository(get<_i25.CollectionRemoteDatasource>()));
  gh.factory<_i28.CollectionsUsecase>(
      () => _i28.CollectionsUsecase(get<_i26.CollectionsRepository>()));
  gh.factory<_i29.CommentsCubit>(() => _i29.CommentsCubit(
        get<_i30.BuildContext>(),
        get<_i11.AuthPreferences>(),
        get<List<_i31.CommentsResponse>>(),
        get<String>(),
        get<_i12.UserPreferences>(),
      ));
  gh.lazySingleton<_i32.ContentRemoteDataSource>(
      () => _i32.ContentRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i33.ContentRepository>(
      () => _i34.ContentRepositoryImpl(get<_i32.ContentRemoteDataSource>()));
  gh.factory<_i35.DeleteAccountUseCase>(
      () => _i35.DeleteAccountUseCase(get<_i14.AuthService>()));
  gh.factory<_i29.DeleteCommentUseCase>(() => _i29.DeleteCommentUseCase(
        get<_i8.ArticlesRepository>(),
        get<String>(),
      ));
  gh.factory<_i29.EditArticleCommentUseCase>(
      () => _i29.EditArticleCommentUseCase(
            get<_i8.ArticlesRepository>(),
            get<String>(),
            get<_i36.AddCommentBody>(),
          ));
  gh.factory<_i37.FinishRegistrationState>(() => _i37.FinishRegistrationState(
        email: get<_i38.Email>(),
        password: get<_i39.Password>(),
        username: get<_i40.Username>(),
        status: get<_i41.BaseStatus<dynamic>>(),
        showPasswordError: get<bool>(),
      ));
  gh.factory<_i42.ForgetPasswordUseCase>(
      () => _i42.ForgetPasswordUseCase(get<_i14.AuthService>()));
  gh.factory<_i29.GetAllArticleCommentsUseCase>(
      () => _i29.GetAllArticleCommentsUseCase(
            get<_i8.ArticlesRepository>(),
            get<String>(),
          ));
  gh.factory<_i43.GetAllCategoriesUseCase>(
      () => _i43.GetAllCategoriesUseCase(get<_i19.CategoriesRepository>()));
  gh.factory<_i44.GetAllLikedArticlesUseCase>(
      () => _i44.GetAllLikedArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i45.GetArticlesUseCase>(
      () => _i45.GetArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i46.GetCategoryArticlesUseCase>(
      () => _i46.GetCategoryArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i47.GetCollectionsArticlesUseCase>(
      () => _i47.GetCollectionsArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i46.GetLifeCategoryArticlesUseCase>(
      () => _i46.GetLifeCategoryArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i48.GetLifeContentUseCase>(
      () => _i48.GetLifeContentUseCase(get<_i33.ContentRepository>()));
  gh.factory<_i49.GetLikedArticlesUseCase>(
      () => _i49.GetLikedArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i50.GetLikedCategoriesUseCase>(
      () => _i50.GetLikedCategoriesUseCase(get<_i19.CategoriesRepository>()));
  gh.factory<_i51.GetMoreContentUseCase>(
      () => _i51.GetMoreContentUseCase(get<_i33.ContentRepository>()));
  gh.factory<_i46.GetNowCategoryArticlesUseCase>(
      () => _i46.GetNowCategoryArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i52.GetNowContentUseCase>(
      () => _i52.GetNowContentUseCase(get<_i33.ContentRepository>()));
  gh.factory<_i53.GetStorytellersArticlesUseCase>(
      () => _i53.GetStorytellersArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.lazySingleton<_i54.GetStreamingUserUseCase>(
      () => _i54.GetStreamingUserUseCase(get<_i14.AuthService>()));
  gh.factory<_i55.GetYouArticlesUseCase>(
      () => _i55.GetYouArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i56.HomeAbCubit>(() => _i56.HomeAbCubit());
  gh.factory<_i57.LifeCubit>(
      () => _i57.LifeCubit(get<_i48.GetLifeContentUseCase>()));
  gh.factory<_i29.LikeArticleCommentUseCase>(
      () => _i29.LikeArticleCommentUseCase(
            get<_i8.ArticlesRepository>(),
            get<String>(),
          ));
  gh.factory<_i58.LikeArticleUsecase>(() => _i58.LikeArticleUsecase(
        get<_i8.ArticlesRepository>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i59.LikeCategoriesUseCase>(
      () => _i59.LikeCategoriesUseCase(get<_i19.CategoriesRepository>()));
  gh.factory<_i60.LikedCategoriesCubit>(
      () => _i60.LikedCategoriesCubit(get<_i50.GetLikedCategoriesUseCase>()));
  gh.factory<_i61.LoginState>(() => _i61.LoginState(
        email: get<_i38.Email>(),
        password: get<_i39.Password>(),
        isLoggingIn: get<bool>(),
        loggedInSuccessfully: get<bool>(),
        error: get<_i62.ResponseError<dynamic>>(),
      ));
  gh.factory<_i63.LoginWithEmailAndPasswordUseCase>(
      () => _i63.LoginWithEmailAndPasswordUseCase(get<_i14.AuthService>()));
  gh.factory<_i64.LogoutUseCase>(
      () => _i64.LogoutUseCase(get<_i14.AuthService>()));
  gh.lazySingleton<_i65.MomentsService>(
      () => _i66.BaseMomentsService(get<_i7.Dio>()));
  gh.factory<_i67.MoreCubit>(
      () => _i67.MoreCubit(get<_i51.GetMoreContentUseCase>()));
  gh.lazySingleton<_i68.NotificationsRemoteDataSource>(
      () => _i68.NotificationsRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i69.NotificationsRepository>(() =>
      _i70.NotificationsRepositoryImpl(
          get<_i68.NotificationsRemoteDataSource>()));
  gh.factory<_i71.NowCubit>(
      () => _i71.NowCubit(get<_i52.GetNowContentUseCase>()));
  gh.factory<_i72.PersonalDetailsState>(() => _i72.PersonalDetailsState(
        user: get<_i73.User>(),
        isLoading: get<bool>(),
        savedSuccessfully: get<bool>(),
        showDeleteAccountDialog: get<bool>(),
        deletedSuccessfully: get<bool>(),
        error: get<_i62.ResponseError<dynamic>>(),
      ));
  gh.lazySingleton<_i74.PreferencesRemoteDataSource>(
      () => _i74.PreferencesRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i75.PreferencesRepository>(() =>
      _i76.PreferencesRepositoryImpl(get<_i74.PreferencesRemoteDataSource>()));
  gh.factory<_i77.ReelsLoopCubit>(() => _i77.ReelsLoopCubit());
  gh.lazySingleton<_i78.ReelsRemoteDataSource>(
      () => _i78.ReelsRemoteDataSource(get<_i7.Dio>()));
  gh.lazySingleton<_i79.ReelsRepository>(
      () => _i80.ReelsRepositoryImpl(get<_i78.ReelsRemoteDataSource>()));
  gh.factory<_i81.RegisterEmailCubit>(() =>
      _i81.RegisterEmailCubit(get<_i24.CheckEmailAlreadyResgisteredUseCase>()));
  gh.factory<_i82.RegistrationUseCase>(
      () => _i82.RegistrationUseCase(get<_i14.AuthService>()));
  gh.factory<_i83.ReplaceLikedCategoriesUseCase>(() =>
      _i83.ReplaceLikedCategoriesUseCase(get<_i19.CategoriesRepository>()));
  gh.factory<_i29.ReplyArticleCommentUseCase>(
      () => _i29.ReplyArticleCommentUseCase(
            get<_i8.ArticlesRepository>(),
            get<String>(),
            get<_i84.ReplyCommentBody>(),
          ));
  gh.factory<_i29.ReportCommentUseCase>(() => _i29.ReportCommentUseCase(
        get<_i8.ArticlesRepository>(),
        get<String>(),
        get<_i85.ReportComment>(),
      ));
  gh.factory<_i86.ResetPasswordCubit>(
      () => _i86.ResetPasswordCubit(get<_i42.ForgetPasswordUseCase>()));
  gh.factory<_i87.SaveAvatarsUseCase>(
      () => _i87.SaveAvatarsUseCase(get<_i14.AuthService>()));
  gh.factory<_i88.SavePersonalDetailsUseCase>(
      () => _i88.SavePersonalDetailsUseCase(get<_i14.AuthService>()));
  gh.factory<_i89.SearchArticlesUseCase>(
      () => _i89.SearchArticlesUseCase(get<_i8.ArticlesRepository>()));
  gh.factory<_i90.SeeAllArticlesCubit>(
      () => _i90.SeeAllArticlesCubit(get<_i45.GetArticlesUseCase>()));
  gh.factory<_i91.SetEmailPreferencesUseCase>(
      () => _i91.SetEmailPreferencesUseCase(get<_i75.PreferencesRepository>()));
  gh.factory<_i92.SetNotificationPreferencesUseCase>(() =>
      _i92.SetNotificationPreferencesUseCase(
          get<_i75.PreferencesRepository>()));
  gh.factory<_i93.SplashCubit>(() => _i93.SplashCubit(
        get<_i94.AppPreferences>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i95.StorytellerArticlesCubit>(() => _i95.StorytellerArticlesCubit(
      get<_i53.GetStorytellersArticlesUseCase>()));
  gh.singleton<_i96.StorytellerRemoteDatasource>(
      _i96.StorytellerRemoteDatasource(get<_i7.Dio>()));
  gh.factory<_i97.StorytellersRepository>(() =>
      _i98.BaseStorytellerRepository(get<_i96.StorytellerRemoteDatasource>()));
  gh.factory<_i29.UnLikeArticleCommentUseCase>(
      () => _i29.UnLikeArticleCommentUseCase(
            get<_i8.ArticlesRepository>(),
            get<String>(),
          ));
  gh.factory<_i99.UnfollowStorytellersUsecase>(() =>
      _i99.UnfollowStorytellersUsecase(get<_i97.StorytellersRepository>()));
  gh.factory<_i100.UnlikeArticleUsecase>(() => _i100.UnlikeArticleUsecase(
        get<_i8.ArticlesRepository>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i29.AddArticleCommentUseCase>(() => _i29.AddArticleCommentUseCase(
        get<_i8.ArticlesRepository>(),
        get<String>(),
        get<_i36.AddCommentBody>(),
      ));
  gh.factory<_i101.ArticleLikeUsecase>(
      () => _i101.ArticleLikeUsecase(get<_i8.ArticlesRepository>()));
  gh.factory<_i102.ArticlesByCategoriesCubit>(
      () => _i102.ArticlesByCategoriesCubit(get<_i55.GetYouArticlesUseCase>()));
  gh.lazySingleton<_i103.AvatarRepository>(
      () => _i104.AvatarsRepositoryImpl(get<_i17.AvatarsRemoteDataSource>()));
  gh.factory<_i105.ChangePasswordCubit>(
      () => _i105.ChangePasswordCubit(get<_i21.ChangePasswordUseCase>()));
  gh.factory<_i106.CollectionCubit>(
      () => _i106.CollectionCubit(get<_i28.CollectionsUsecase>()));
  gh.factory<_i107.CollectionsArticlesCubit>(() =>
      _i107.CollectionsArticlesCubit(
          get<_i47.GetCollectionsArticlesUseCase>()));
  gh.factory<_i108.ExploreAllCategoriesCubit>(() =>
      _i108.ExploreAllCategoriesCubit(get<_i43.GetAllCategoriesUseCase>()));
  gh.factory<_i109.ExploreSearchCubit>(
      () => _i109.ExploreSearchCubit(get<_i89.SearchArticlesUseCase>()));
  gh.factory<_i37.FinishRegistrationCubit>(
      () => _i37.FinishRegistrationCubit(get<_i82.RegistrationUseCase>()));
  gh.factory<_i110.FollowStorytellersUsecase>(() =>
      _i110.FollowStorytellersUsecase(get<_i97.StorytellersRepository>()));
  gh.factory<_i111.GetAllNotificationsUseCase>(() =>
      _i111.GetAllNotificationsUseCase(get<_i69.NotificationsRepository>()));
  gh.factory<_i112.GetAvatarsUseCase>(
      () => _i112.GetAvatarsUseCase(get<_i103.AvatarRepository>()));
  gh.factory<_i113.GetCategoryArticlesCubit>(
      () => _i113.GetCategoryArticlesCubit(
            get<_i46.GetCategoryArticlesUseCase>(),
            get<_i46.GetLifeCategoryArticlesUseCase>(),
            get<_i46.GetNowCategoryArticlesUseCase>(),
          ));
  gh.factory<_i114.GetEmailPreferencesUseCase>(() =>
      _i114.GetEmailPreferencesUseCase(get<_i75.PreferencesRepository>()));
  gh.factory<_i115.GetLikedArticlesCubit>(
      () => _i115.GetLikedArticlesCubit(get<_i49.GetLikedArticlesUseCase>()));
  gh.factory<_i116.GetLikedArticlesCubit>(
      () => _i116.GetLikedArticlesCubit(get<_i49.GetLikedArticlesUseCase>()));
  gh.factory<_i117.GetNotificationPreferencesUseCase>(() =>
      _i117.GetNotificationPreferencesUseCase(
          get<_i75.PreferencesRepository>()));
  gh.factory<_i118.GetReelsUseCase>(
      () => _i118.GetReelsUseCase(get<_i79.ReelsRepository>()));
  gh.factory<_i119.GetStorytellersUsecase>(
      () => _i119.GetStorytellersUsecase(get<_i97.StorytellersRepository>()));
  gh.factory<_i120.InterestsCubit>(() => _i120.InterestsCubit(
        get<_i43.GetAllCategoriesUseCase>(),
        get<_i50.GetLikedCategoriesUseCase>(),
        get<_i83.ReplaceLikedCategoriesUseCase>(),
      ));
  gh.factory<_i121.LikeArticleCubit>(() => _i121.LikeArticleCubit(
        get<_i58.LikeArticleUsecase>(),
        get<_i100.UnlikeArticleUsecase>(),
        get<_i44.GetAllLikedArticlesUseCase>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i61.LoginCubit>(
      () => _i61.LoginCubit(get<_i63.LoginWithEmailAndPasswordUseCase>()));
  gh.factory<_i122.MarkNotificationAsReadUseCase>(() =>
      _i122.MarkNotificationAsReadUseCase(get<_i69.NotificationsRepository>()));
  gh.factory<_i123.MomentsRepository>(
      () => _i124.BaseMomentsRepository(get<_i65.MomentsService>()));
  gh.factory<_i125.NotificationPreferenceCubit>(
      () => _i125.NotificationPreferenceCubit(
            get<_i117.GetNotificationPreferencesUseCase>(),
            get<_i92.SetNotificationPreferencesUseCase>(),
          ));
  gh.factory<_i126.NotificationsCubit>(() => _i126.NotificationsCubit(
        get<_i111.GetAllNotificationsUseCase>(),
        get<_i122.MarkNotificationAsReadUseCase>(),
      ));
  gh.factory<_i72.PersonalDetailsCubit>(() => _i72.PersonalDetailsCubit(
        get<_i88.SavePersonalDetailsUseCase>(),
        get<_i35.DeleteAccountUseCase>(),
        get<_i12.UserPreferences>(),
      ));
  gh.factory<_i127.ReelDetailsCubit>(() => _i127.ReelDetailsCubit(
        get<_i58.LikeArticleUsecase>(),
        get<_i100.UnlikeArticleUsecase>(),
      ));
  gh.factory<_i128.ReelsCubit>(
      () => _i128.ReelsCubit(get<_i118.GetReelsUseCase>()));
  gh.factory<_i129.SaveAvatarsCubit>(
      () => _i129.SaveAvatarsCubit(get<_i87.SaveAvatarsUseCase>()));
  gh.factory<_i130.ArticlLikeCubit>(() => _i130.ArticlLikeCubit(
        get<_i101.ArticleLikeUsecase>(),
        get<_i58.LikeArticleUsecase>(),
        get<_i100.UnlikeArticleUsecase>(),
      ));
  gh.factory<_i131.DislikeMomentUsecase>(() => _i131.DislikeMomentUsecase(
        get<_i123.MomentsRepository>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i132.EmailPreferenceCubit>(() => _i132.EmailPreferenceCubit(
        get<_i114.GetEmailPreferencesUseCase>(),
        get<_i91.SetEmailPreferencesUseCase>(),
      ));
  gh.factory<_i133.FollowStoryTellerCubit>(() => _i133.FollowStoryTellerCubit(
        get<_i110.FollowStorytellersUsecase>(),
        get<_i99.UnfollowStorytellersUsecase>(),
      ));
  gh.factory<_i134.GetAvatarsCubit>(
      () => _i134.GetAvatarsCubit(get<_i112.GetAvatarsUseCase>()));
  gh.factory<_i135.GetMomentsUsecase>(() => _i135.GetMomentsUsecase(
        get<_i123.MomentsRepository>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i136.GetStoryTellerCubit>(
      () => _i136.GetStoryTellerCubit(get<_i119.GetStorytellersUsecase>()));
  gh.factory<_i137.LikeMomentUsecase>(() => _i137.LikeMomentUsecase(
        get<_i123.MomentsRepository>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i138.MarkMomentAsSeenUsecase>(() => _i138.MarkMomentAsSeenUsecase(
        get<_i123.MomentsRepository>(),
        get<_i11.AuthPreferences>(),
      ));
  gh.factory<_i139.MomentsCubit>(() => _i139.MomentsCubit(
        get<_i135.GetMomentsUsecase>(),
        get<_i138.MarkMomentAsSeenUsecase>(),
      ));
  return get;
}
