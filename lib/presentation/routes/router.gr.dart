// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i54;
import 'package:flutter/material.dart' as _i55;

import '../../domain/entities/article.dart' as _i56;
import '../../domain/entities/category.dart' as _i59;
import '../../domain/entities/collection.dart' as _i60;
import '../../domain/entities/storyteller.dart' as _i58;
import '../../domain/entities/storyteller_wrapper.dart' as _i57;
import '../feature/articles/article_screen.dart' as _i7;
import '../feature/articles/ui/article_comments/article_comments.dart' as _i8;
import '../feature/articles/ui/dynamic_templating/full_screen/ui/full_screen.dart'
    as _i36;
import '../feature/confirm_email/confirm_email_screen.dart' as _i3;
import '../feature/explore/explore_screen.dart' as _i21;
import '../feature/home/category_details/category_details_screen.dart' as _i23;
import '../feature/home/home_feed/home_feed_page.dart' as _i37;
import '../feature/home/home_screen.dart' as _i6;
import '../feature/home/life/life_page.dart' as _i39;
import '../feature/home/more/more_page.dart' as _i41;
import '../feature/home/profile/activity/activity_screen.dart' as _i19;
import '../feature/home/profile/activity/likes_tab/likes_tab.dart' as _i46;
import '../feature/home/profile/activity/story_tellers_tab/story_teller_details/story_teller_details_page.dart'
    as _i20;
import '../feature/home/profile/activity/story_tellers_tab/story_tellers_tab.dart'
    as _i47;
import '../feature/home/profile/edit_avatar/edit_avatar_screen.dart' as _i35;
import '../feature/home/profile/manage_account/manage_account_screen.dart'
    as _i15;
import '../feature/home/profile/manage_account/ui/password_tab.dart' as _i45;
import '../feature/home/profile/manage_account/ui/personal_details_tab.dart'
    as _i44;
import '../feature/home/profile/manage_account/unauthorized_profile_screen.dart'
    as _i16;
import '../feature/home/profile/preferences/emails_tab/emails_tab.dart' as _i52;
import '../feature/home/profile/preferences/interests_tab/interests_tab.dart'
    as _i53;
import '../feature/home/profile/preferences/notifications_preferences.dart'
    as _i31;
import '../feature/home/profile/preferences/notifications_tab/notifications_tab.dart'
    as _i51;
import '../feature/home/profile/preferences/preferences_screen.dart' as _i33;
import '../feature/home/profile/preferences/settings_screen.dart' as _i25;
import '../feature/home/profile/preferences/ui/settings_display.dart' as _i32;
import '../feature/home/profile/profile_page.dart' as _i10;
import '../feature/home/profile/settings_page/account_information_screen.dart'
    as _i26;
import '../feature/home/profile/settings_page/language_screen/language_screen.dart'
    as _i29;
import '../feature/home/profile/settings_page/preferences_notifications_screen.dart'
    as _i18;
import '../feature/home/profile/settings_page/security_screen.dart' as _i27;
import '../feature/home/profile/settings_page/terms_and_conditions_screen.dart'
    as _i28;
import '../feature/home/profile/settings_page/video_settings_screen.dart'
    as _i30;
import '../feature/home/reels/reels_page.dart' as _i40;
import '../feature/home/reels_details/reels_details_screen.dart' as _i14;
import '../feature/home/you/you_page.dart' as _i38;
import '../feature/home/you/you_page_logged_in/articles_by_category_page/articles_by_category_page.dart'
    as _i42;
import '../feature/home/you/you_page_logged_in/collection/collection_page.dart'
    as _i43;
import '../feature/home/you/you_page_logged_in/collections_details/collections_details_page.dart'
    as _i34;
import '../feature/home/you/you_page_logged_in/followings/followings_page.dart'
    as _i12;
import '../feature/home/you/you_page_logged_out/ui/authentication_screen.dart'
    as _i11;
import '../feature/login/login_screen.dart' as _i2;
import '../feature/moments/moments_screen.dart' as _i13;
import '../feature/notifications/notifications_screen.dart' as _i17;
import '../feature/onboarding/onboarding_screen.dart' as _i24;
import '../feature/reset_password/reset_password_screen.dart' as _i4;
import '../feature/reset_password/update_password_screen.dart' as _i5;
import '../feature/see_all_articles/see_all_articles_screen.dart' as _i9;
import '../feature/splash/splash_screen.dart' as _i1;
import '../feature/support/support_screen.dart' as _i22;
import '../feature/support/ui/support_contact_us/support_contact_us.dart'
    as _i49;
import '../feature/support/ui/support_help_center/support_help_center.dart'
    as _i48;
import '../feature/support/ui/support_share_your_story/support_share_your_story.dart'
    as _i50;

class AppRouter extends _i54.RootStackRouter {
  AppRouter([_i55.GlobalKey<_i55.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i54.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    ConfirmEmailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmEmailScreenRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ConfirmEmailScreen(
          key: args.key,
          email: args.email,
          name: args.name,
          username: args.username,
          password: args.password,
          forceResend: args.forceResend,
        ),
      );
    },
    ResetPasswordScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPasswordScreen(),
      );
    },
    UpdatePasswordScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UpdatePasswordScreenRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.UpdatePasswordScreen(
          key: args.key,
          email: args.email,
        ),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    ArticleScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleScreenRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ArticleScreen(
          key: args.key,
          article: args.article,
          tag: args.tag,
        ),
      );
    },
    ArticleCommentsRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ArticleComments(),
      );
    },
    SeeAllArticlesScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SeeAllArticlesScreen(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
    AuthenticationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationScreenRouteArgs>(
          orElse: () => const AuthenticationScreenRouteArgs());
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.AuthenticationScreen(
          key: args.key,
          inLogin: args.inLogin,
        ),
      );
    },
    FollowingsPageRoute.name: (routeData) {
      final args = routeData.argsAs<FollowingsPageRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.FollowingsPage(
          key: args.key,
          storytellersList: args.storytellersList,
        ),
      );
    },
    MomentsScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.MomentsScreen(),
      );
    },
    ReelsDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ReelsDetailsScreenRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i14.ReelsDetailsScreen(
          args.articles,
          key: args.key,
          doPop: args.doPop,
          selectedArticle: args.selectedArticle,
        ),
      );
    },
    ManageAccountScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ManageAccountScreen(),
      );
    },
    UnauthorizedProfileScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.UnauthorizedProfileScreen(),
      );
    },
    NotificationsScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.NotificationsScreen(),
      );
    },
    PreferencesNotificationsScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.PreferencesNotificationsScreen(),
      );
    },
    ActivityScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.ActivityScreen(),
      );
    },
    StoryTellerDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<StoryTellerDetailsPageRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.StoryTellerDetailsPage(
          key: args.key,
          storyteller: args.storyteller,
        ),
      );
    },
    ExploreScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.ExploreScreen(),
      );
    },
    SupportScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i22.SupportScreen(),
      );
    },
    CategoryDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailsScreenRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i23.CategoryDetailsScreen(
          key: args.key,
          category: args.category,
        ),
      );
    },
    OnboardingScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.OnboardingScreen(),
      );
    },
    SettingsScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.SettingsScreen(),
      );
    },
    AccountInformationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AccountInformationScreenRouteArgs>(
          orElse: () => const AccountInformationScreenRouteArgs());
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i26.AccountInformationScreen(key: args.key),
      );
    },
    SecurityScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.SecurityScreen(),
      );
    },
    TermsAndConditionsRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.TermsAndConditions(),
      );
    },
    LanguageScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i29.LanguageScreen(),
      );
    },
    VideoSettingsScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i30.VideoSettingsScreen(),
      );
    },
    NotificationsPreferencseRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.NotificationsPreferencse(),
      );
    },
    DisplaySettingsRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i32.DisplaySettings(),
      );
    },
    PreferencesScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i33.PreferencesScreen(),
      );
    },
    CollectionDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<CollectionDetailsPageRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i34.CollectionDetailsPage(
          key: args.key,
          collection: args.collection,
        ),
      );
    },
    EditAvatarScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i35.EditAvatarScreen(),
      );
    },
    FullScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FullScreenRouteArgs>();
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i36.FullScreen(
          key: args.key,
          videoId: args.videoId,
          isVertical: args.isVertical,
        ),
      );
    },
    HomeFeedPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i37.HomeFeedPage(),
      );
    },
    YouPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i38.YouPage(),
      );
    },
    LifePageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i39.LifePage(),
      );
    },
    ReelsPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i40.ReelsPage(),
      );
    },
    MorePageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i41.MorePage(),
      );
    },
    ArticlesByCategoryPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i42.ArticlesByCategoryPage(),
      );
    },
    CollectionPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i43.CollectionPage(),
      );
    },
    PersonalDetailsTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i44.PersonalDetailsTab(),
      );
    },
    PasswordTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i45.PasswordTab(),
      );
    },
    LikesTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i46.LikesTab(),
      );
    },
    StoryTellersTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i47.StoryTellersTab(),
      );
    },
    SupportHelpCenterTabPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i48.SupportHelpCenterTabPage(),
      );
    },
    SupportContactUsTabPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i49.SupportContactUsTabPage(),
      );
    },
    SupportShareYourStoryTabPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i50.SupportShareYourStoryTabPage(),
      );
    },
    NotificationsTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i51.NotificationsTab(),
      );
    },
    EmailsTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i52.EmailsTab(),
      );
    },
    InterestsTabRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i53.InterestsTab(),
      );
    },
  };

  @override
  List<_i54.RouteConfig> get routes => [
        _i54.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i54.RouteConfig(
          LoginScreenRoute.name,
          path: '/login',
        ),
        _i54.RouteConfig(
          ConfirmEmailScreenRoute.name,
          path: '/confirm-email',
        ),
        _i54.RouteConfig(
          ResetPasswordScreenRoute.name,
          path: '/reset-password',
        ),
        _i54.RouteConfig(
          UpdatePasswordScreenRoute.name,
          path: '/update-password',
        ),
        _i54.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
          children: [
            _i54.RouteConfig(
              HomeFeedPageRoute.name,
              path: '',
              parent: HomeScreenRoute.name,
            ),
            _i54.RouteConfig(
              YouPageRoute.name,
              path: 'you-page',
              parent: HomeScreenRoute.name,
              children: [
                _i54.RouteConfig(
                  ArticlesByCategoryPageRoute.name,
                  path: '',
                  parent: YouPageRoute.name,
                ),
                _i54.RouteConfig(
                  CollectionPageRoute.name,
                  path: 'collection-page',
                  parent: YouPageRoute.name,
                ),
              ],
            ),
            _i54.RouteConfig(
              LifePageRoute.name,
              path: 'life-page',
              parent: HomeScreenRoute.name,
            ),
            _i54.RouteConfig(
              ReelsPageRoute.name,
              path: 'reels-page',
              parent: HomeScreenRoute.name,
            ),
            _i54.RouteConfig(
              MorePageRoute.name,
              path: 'more-page',
              parent: HomeScreenRoute.name,
            ),
          ],
        ),
        _i54.RouteConfig(
          ArticleScreenRoute.name,
          path: '/article',
        ),
        _i54.RouteConfig(
          ArticleCommentsRoute.name,
          path: '/comments',
        ),
        _i54.RouteConfig(
          SeeAllArticlesScreenRoute.name,
          path: '/see-all-articles',
        ),
        _i54.RouteConfig(
          ProfilePageRoute.name,
          path: '/profile',
        ),
        _i54.RouteConfig(
          AuthenticationScreenRoute.name,
          path: '/authentication',
        ),
        _i54.RouteConfig(
          FollowingsPageRoute.name,
          path: '/followings-page',
        ),
        _i54.RouteConfig(
          MomentsScreenRoute.name,
          path: '/moments',
        ),
        _i54.RouteConfig(
          ReelsDetailsScreenRoute.name,
          path: '/reels',
        ),
        _i54.RouteConfig(
          ManageAccountScreenRoute.name,
          path: '/manage-account',
          children: [
            _i54.RouteConfig(
              PersonalDetailsTabRoute.name,
              path: '',
              parent: ManageAccountScreenRoute.name,
            ),
            _i54.RouteConfig(
              PasswordTabRoute.name,
              path: 'password-tab',
              parent: ManageAccountScreenRoute.name,
            ),
          ],
        ),
        _i54.RouteConfig(
          UnauthorizedProfileScreenRoute.name,
          path: '/unauthorized-profile',
        ),
        _i54.RouteConfig(
          NotificationsScreenRoute.name,
          path: '/notifications',
        ),
        _i54.RouteConfig(
          PreferencesNotificationsScreenRoute.name,
          path: '/preferences-notifications',
        ),
        _i54.RouteConfig(
          ActivityScreenRoute.name,
          path: '/activity',
          children: [
            _i54.RouteConfig(
              LikesTabRoute.name,
              path: '',
              parent: ActivityScreenRoute.name,
            ),
            _i54.RouteConfig(
              StoryTellersTabRoute.name,
              path: 'story-tellers-tab',
              parent: ActivityScreenRoute.name,
            ),
          ],
        ),
        _i54.RouteConfig(
          StoryTellerDetailsPageRoute.name,
          path: 'story-teller',
        ),
        _i54.RouteConfig(
          ExploreScreenRoute.name,
          path: 'explore',
        ),
        _i54.RouteConfig(
          SupportScreenRoute.name,
          path: '/support',
          children: [
            _i54.RouteConfig(
              SupportHelpCenterTabPageRoute.name,
              path: '',
              parent: SupportScreenRoute.name,
            ),
            _i54.RouteConfig(
              SupportContactUsTabPageRoute.name,
              path: 'support-contact-us-tab-page',
              parent: SupportScreenRoute.name,
            ),
            _i54.RouteConfig(
              SupportShareYourStoryTabPageRoute.name,
              path: 'support-share-your-story-tab-page',
              parent: SupportScreenRoute.name,
            ),
          ],
        ),
        _i54.RouteConfig(
          CategoryDetailsScreenRoute.name,
          path: 'categories',
        ),
        _i54.RouteConfig(
          OnboardingScreenRoute.name,
          path: 'onboarding',
        ),
        _i54.RouteConfig(
          SettingsScreenRoute.name,
          path: '/settings',
        ),
        _i54.RouteConfig(
          AccountInformationScreenRoute.name,
          path: '/settings/account-information',
        ),
        _i54.RouteConfig(
          SecurityScreenRoute.name,
          path: '/settings/security',
        ),
        _i54.RouteConfig(
          TermsAndConditionsRoute.name,
          path: '/settings/terms-and-conditions',
        ),
        _i54.RouteConfig(
          LanguageScreenRoute.name,
          path: '/settings/language-screen',
        ),
        _i54.RouteConfig(
          VideoSettingsScreenRoute.name,
          path: '/settings/video-settings',
        ),
        _i54.RouteConfig(
          NotificationsPreferencseRoute.name,
          path: '/settings/notifications',
          children: [
            _i54.RouteConfig(
              NotificationsTabRoute.name,
              path: 'notifications-tab',
              parent: NotificationsPreferencseRoute.name,
            ),
            _i54.RouteConfig(
              EmailsTabRoute.name,
              path: 'emails-tab',
              parent: NotificationsPreferencseRoute.name,
            ),
          ],
        ),
        _i54.RouteConfig(
          DisplaySettingsRoute.name,
          path: '/settings/display',
        ),
        _i54.RouteConfig(
          PreferencesScreenRoute.name,
          path: '/preferences',
          children: [
            _i54.RouteConfig(
              InterestsTabRoute.name,
              path: 'interests-tab',
              parent: PreferencesScreenRoute.name,
            )
          ],
        ),
        _i54.RouteConfig(
          CollectionDetailsPageRoute.name,
          path: 'collection',
        ),
        _i54.RouteConfig(
          EditAvatarScreenRoute.name,
          path: '/edit-avatar',
        ),
        _i54.RouteConfig(
          FullScreenRoute.name,
          path: '/full-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i54.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i54.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.ConfirmEmailScreen]
class ConfirmEmailScreenRoute
    extends _i54.PageRouteInfo<ConfirmEmailScreenRouteArgs> {
  ConfirmEmailScreenRoute({
    _i55.Key? key,
    required String email,
    required String name,
    required String username,
    required String password,
    bool forceResend = false,
  }) : super(
          ConfirmEmailScreenRoute.name,
          path: '/confirm-email',
          args: ConfirmEmailScreenRouteArgs(
            key: key,
            email: email,
            name: name,
            username: username,
            password: password,
            forceResend: forceResend,
          ),
        );

  static const String name = 'ConfirmEmailScreenRoute';
}

class ConfirmEmailScreenRouteArgs {
  const ConfirmEmailScreenRouteArgs({
    this.key,
    required this.email,
    required this.name,
    required this.username,
    required this.password,
    this.forceResend = false,
  });

  final _i55.Key? key;

  final String email;

  final String name;

  final String username;

  final String password;

  final bool forceResend;

  @override
  String toString() {
    return 'ConfirmEmailScreenRouteArgs{key: $key, email: $email, name: $name, username: $username, password: $password, forceResend: $forceResend}';
  }
}

/// generated route for
/// [_i4.ResetPasswordScreen]
class ResetPasswordScreenRoute extends _i54.PageRouteInfo<void> {
  const ResetPasswordScreenRoute()
      : super(
          ResetPasswordScreenRoute.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPasswordScreenRoute';
}

/// generated route for
/// [_i5.UpdatePasswordScreen]
class UpdatePasswordScreenRoute
    extends _i54.PageRouteInfo<UpdatePasswordScreenRouteArgs> {
  UpdatePasswordScreenRoute({
    _i55.Key? key,
    required String email,
  }) : super(
          UpdatePasswordScreenRoute.name,
          path: '/update-password',
          args: UpdatePasswordScreenRouteArgs(
            key: key,
            email: email,
          ),
        );

  static const String name = 'UpdatePasswordScreenRoute';
}

class UpdatePasswordScreenRouteArgs {
  const UpdatePasswordScreenRouteArgs({
    this.key,
    required this.email,
  });

  final _i55.Key? key;

  final String email;

  @override
  String toString() {
    return 'UpdatePasswordScreenRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreenRoute extends _i54.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i54.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i7.ArticleScreen]
class ArticleScreenRoute extends _i54.PageRouteInfo<ArticleScreenRouteArgs> {
  ArticleScreenRoute({
    _i55.Key? key,
    required _i56.Article article,
    String tag = '',
  }) : super(
          ArticleScreenRoute.name,
          path: '/article',
          args: ArticleScreenRouteArgs(
            key: key,
            article: article,
            tag: tag,
          ),
        );

  static const String name = 'ArticleScreenRoute';
}

class ArticleScreenRouteArgs {
  const ArticleScreenRouteArgs({
    this.key,
    required this.article,
    this.tag = '',
  });

  final _i55.Key? key;

  final _i56.Article article;

  final String tag;

  @override
  String toString() {
    return 'ArticleScreenRouteArgs{key: $key, article: $article, tag: $tag}';
  }
}

/// generated route for
/// [_i8.ArticleComments]
class ArticleCommentsRoute extends _i54.PageRouteInfo<void> {
  const ArticleCommentsRoute()
      : super(
          ArticleCommentsRoute.name,
          path: '/comments',
        );

  static const String name = 'ArticleCommentsRoute';
}

/// generated route for
/// [_i9.SeeAllArticlesScreen]
class SeeAllArticlesScreenRoute extends _i54.PageRouteInfo<void> {
  const SeeAllArticlesScreenRoute()
      : super(
          SeeAllArticlesScreenRoute.name,
          path: '/see-all-articles',
        );

  static const String name = 'SeeAllArticlesScreenRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfilePageRoute extends _i54.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i11.AuthenticationScreen]
class AuthenticationScreenRoute
    extends _i54.PageRouteInfo<AuthenticationScreenRouteArgs> {
  AuthenticationScreenRoute({
    _i55.Key? key,
    bool inLogin = true,
  }) : super(
          AuthenticationScreenRoute.name,
          path: '/authentication',
          args: AuthenticationScreenRouteArgs(
            key: key,
            inLogin: inLogin,
          ),
        );

  static const String name = 'AuthenticationScreenRoute';
}

class AuthenticationScreenRouteArgs {
  const AuthenticationScreenRouteArgs({
    this.key,
    this.inLogin = true,
  });

  final _i55.Key? key;

  final bool inLogin;

  @override
  String toString() {
    return 'AuthenticationScreenRouteArgs{key: $key, inLogin: $inLogin}';
  }
}

/// generated route for
/// [_i12.FollowingsPage]
class FollowingsPageRoute extends _i54.PageRouteInfo<FollowingsPageRouteArgs> {
  FollowingsPageRoute({
    _i55.Key? key,
    required List<_i57.StorytellerWrapper> storytellersList,
  }) : super(
          FollowingsPageRoute.name,
          path: '/followings-page',
          args: FollowingsPageRouteArgs(
            key: key,
            storytellersList: storytellersList,
          ),
        );

  static const String name = 'FollowingsPageRoute';
}

class FollowingsPageRouteArgs {
  const FollowingsPageRouteArgs({
    this.key,
    required this.storytellersList,
  });

  final _i55.Key? key;

  final List<_i57.StorytellerWrapper> storytellersList;

  @override
  String toString() {
    return 'FollowingsPageRouteArgs{key: $key, storytellersList: $storytellersList}';
  }
}

/// generated route for
/// [_i13.MomentsScreen]
class MomentsScreenRoute extends _i54.PageRouteInfo<void> {
  const MomentsScreenRoute()
      : super(
          MomentsScreenRoute.name,
          path: '/moments',
        );

  static const String name = 'MomentsScreenRoute';
}

/// generated route for
/// [_i14.ReelsDetailsScreen]
class ReelsDetailsScreenRoute
    extends _i54.PageRouteInfo<ReelsDetailsScreenRouteArgs> {
  ReelsDetailsScreenRoute({
    required List<_i56.Article> articles,
    _i55.Key? key,
    bool doPop = true,
    required _i56.Article selectedArticle,
  }) : super(
          ReelsDetailsScreenRoute.name,
          path: '/reels',
          args: ReelsDetailsScreenRouteArgs(
            articles: articles,
            key: key,
            doPop: doPop,
            selectedArticle: selectedArticle,
          ),
        );

  static const String name = 'ReelsDetailsScreenRoute';
}

class ReelsDetailsScreenRouteArgs {
  const ReelsDetailsScreenRouteArgs({
    required this.articles,
    this.key,
    this.doPop = true,
    required this.selectedArticle,
  });

  final List<_i56.Article> articles;

  final _i55.Key? key;

  final bool doPop;

  final _i56.Article selectedArticle;

  @override
  String toString() {
    return 'ReelsDetailsScreenRouteArgs{articles: $articles, key: $key, doPop: $doPop, selectedArticle: $selectedArticle}';
  }
}

/// generated route for
/// [_i15.ManageAccountScreen]
class ManageAccountScreenRoute extends _i54.PageRouteInfo<void> {
  const ManageAccountScreenRoute({List<_i54.PageRouteInfo>? children})
      : super(
          ManageAccountScreenRoute.name,
          path: '/manage-account',
          initialChildren: children,
        );

  static const String name = 'ManageAccountScreenRoute';
}

/// generated route for
/// [_i16.UnauthorizedProfileScreen]
class UnauthorizedProfileScreenRoute extends _i54.PageRouteInfo<void> {
  const UnauthorizedProfileScreenRoute()
      : super(
          UnauthorizedProfileScreenRoute.name,
          path: '/unauthorized-profile',
        );

  static const String name = 'UnauthorizedProfileScreenRoute';
}

/// generated route for
/// [_i17.NotificationsScreen]
class NotificationsScreenRoute extends _i54.PageRouteInfo<void> {
  const NotificationsScreenRoute()
      : super(
          NotificationsScreenRoute.name,
          path: '/notifications',
        );

  static const String name = 'NotificationsScreenRoute';
}

/// generated route for
/// [_i18.PreferencesNotificationsScreen]
class PreferencesNotificationsScreenRoute extends _i54.PageRouteInfo<void> {
  const PreferencesNotificationsScreenRoute()
      : super(
          PreferencesNotificationsScreenRoute.name,
          path: '/preferences-notifications',
        );

  static const String name = 'PreferencesNotificationsScreenRoute';
}

/// generated route for
/// [_i19.ActivityScreen]
class ActivityScreenRoute extends _i54.PageRouteInfo<void> {
  const ActivityScreenRoute({List<_i54.PageRouteInfo>? children})
      : super(
          ActivityScreenRoute.name,
          path: '/activity',
          initialChildren: children,
        );

  static const String name = 'ActivityScreenRoute';
}

/// generated route for
/// [_i20.StoryTellerDetailsPage]
class StoryTellerDetailsPageRoute
    extends _i54.PageRouteInfo<StoryTellerDetailsPageRouteArgs> {
  StoryTellerDetailsPageRoute({
    _i55.Key? key,
    required _i58.Storyteller storyteller,
  }) : super(
          StoryTellerDetailsPageRoute.name,
          path: 'story-teller',
          args: StoryTellerDetailsPageRouteArgs(
            key: key,
            storyteller: storyteller,
          ),
        );

  static const String name = 'StoryTellerDetailsPageRoute';
}

class StoryTellerDetailsPageRouteArgs {
  const StoryTellerDetailsPageRouteArgs({
    this.key,
    required this.storyteller,
  });

  final _i55.Key? key;

  final _i58.Storyteller storyteller;

  @override
  String toString() {
    return 'StoryTellerDetailsPageRouteArgs{key: $key, storyteller: $storyteller}';
  }
}

/// generated route for
/// [_i21.ExploreScreen]
class ExploreScreenRoute extends _i54.PageRouteInfo<void> {
  const ExploreScreenRoute()
      : super(
          ExploreScreenRoute.name,
          path: 'explore',
        );

  static const String name = 'ExploreScreenRoute';
}

/// generated route for
/// [_i22.SupportScreen]
class SupportScreenRoute extends _i54.PageRouteInfo<void> {
  const SupportScreenRoute({List<_i54.PageRouteInfo>? children})
      : super(
          SupportScreenRoute.name,
          path: '/support',
          initialChildren: children,
        );

  static const String name = 'SupportScreenRoute';
}

/// generated route for
/// [_i23.CategoryDetailsScreen]
class CategoryDetailsScreenRoute
    extends _i54.PageRouteInfo<CategoryDetailsScreenRouteArgs> {
  CategoryDetailsScreenRoute({
    _i55.Key? key,
    required _i59.Category category,
  }) : super(
          CategoryDetailsScreenRoute.name,
          path: 'categories',
          args: CategoryDetailsScreenRouteArgs(
            key: key,
            category: category,
          ),
        );

  static const String name = 'CategoryDetailsScreenRoute';
}

class CategoryDetailsScreenRouteArgs {
  const CategoryDetailsScreenRouteArgs({
    this.key,
    required this.category,
  });

  final _i55.Key? key;

  final _i59.Category category;

  @override
  String toString() {
    return 'CategoryDetailsScreenRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i24.OnboardingScreen]
class OnboardingScreenRoute extends _i54.PageRouteInfo<void> {
  const OnboardingScreenRoute()
      : super(
          OnboardingScreenRoute.name,
          path: 'onboarding',
        );

  static const String name = 'OnboardingScreenRoute';
}

/// generated route for
/// [_i25.SettingsScreen]
class SettingsScreenRoute extends _i54.PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(
          SettingsScreenRoute.name,
          path: '/settings',
        );

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [_i26.AccountInformationScreen]
class AccountInformationScreenRoute
    extends _i54.PageRouteInfo<AccountInformationScreenRouteArgs> {
  AccountInformationScreenRoute({_i55.Key? key})
      : super(
          AccountInformationScreenRoute.name,
          path: '/settings/account-information',
          args: AccountInformationScreenRouteArgs(key: key),
        );

  static const String name = 'AccountInformationScreenRoute';
}

class AccountInformationScreenRouteArgs {
  const AccountInformationScreenRouteArgs({this.key});

  final _i55.Key? key;

  @override
  String toString() {
    return 'AccountInformationScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i27.SecurityScreen]
class SecurityScreenRoute extends _i54.PageRouteInfo<void> {
  const SecurityScreenRoute()
      : super(
          SecurityScreenRoute.name,
          path: '/settings/security',
        );

  static const String name = 'SecurityScreenRoute';
}

/// generated route for
/// [_i28.TermsAndConditions]
class TermsAndConditionsRoute extends _i54.PageRouteInfo<void> {
  const TermsAndConditionsRoute()
      : super(
          TermsAndConditionsRoute.name,
          path: '/settings/terms-and-conditions',
        );

  static const String name = 'TermsAndConditionsRoute';
}

/// generated route for
/// [_i29.LanguageScreen]
class LanguageScreenRoute extends _i54.PageRouteInfo<void> {
  const LanguageScreenRoute()
      : super(
          LanguageScreenRoute.name,
          path: '/settings/language-screen',
        );

  static const String name = 'LanguageScreenRoute';
}

/// generated route for
/// [_i30.VideoSettingsScreen]
class VideoSettingsScreenRoute extends _i54.PageRouteInfo<void> {
  const VideoSettingsScreenRoute()
      : super(
          VideoSettingsScreenRoute.name,
          path: '/settings/video-settings',
        );

  static const String name = 'VideoSettingsScreenRoute';
}

/// generated route for
/// [_i31.NotificationsPreferencse]
class NotificationsPreferencseRoute extends _i54.PageRouteInfo<void> {
  const NotificationsPreferencseRoute({List<_i54.PageRouteInfo>? children})
      : super(
          NotificationsPreferencseRoute.name,
          path: '/settings/notifications',
          initialChildren: children,
        );

  static const String name = 'NotificationsPreferencseRoute';
}

/// generated route for
/// [_i32.DisplaySettings]
class DisplaySettingsRoute extends _i54.PageRouteInfo<void> {
  const DisplaySettingsRoute()
      : super(
          DisplaySettingsRoute.name,
          path: '/settings/display',
        );

  static const String name = 'DisplaySettingsRoute';
}

/// generated route for
/// [_i33.PreferencesScreen]
class PreferencesScreenRoute extends _i54.PageRouteInfo<void> {
  const PreferencesScreenRoute({List<_i54.PageRouteInfo>? children})
      : super(
          PreferencesScreenRoute.name,
          path: '/preferences',
          initialChildren: children,
        );

  static const String name = 'PreferencesScreenRoute';
}

/// generated route for
/// [_i34.CollectionDetailsPage]
class CollectionDetailsPageRoute
    extends _i54.PageRouteInfo<CollectionDetailsPageRouteArgs> {
  CollectionDetailsPageRoute({
    _i55.Key? key,
    required _i60.Collection collection,
  }) : super(
          CollectionDetailsPageRoute.name,
          path: 'collection',
          args: CollectionDetailsPageRouteArgs(
            key: key,
            collection: collection,
          ),
        );

  static const String name = 'CollectionDetailsPageRoute';
}

class CollectionDetailsPageRouteArgs {
  const CollectionDetailsPageRouteArgs({
    this.key,
    required this.collection,
  });

  final _i55.Key? key;

  final _i60.Collection collection;

  @override
  String toString() {
    return 'CollectionDetailsPageRouteArgs{key: $key, collection: $collection}';
  }
}

/// generated route for
/// [_i35.EditAvatarScreen]
class EditAvatarScreenRoute extends _i54.PageRouteInfo<void> {
  const EditAvatarScreenRoute()
      : super(
          EditAvatarScreenRoute.name,
          path: '/edit-avatar',
        );

  static const String name = 'EditAvatarScreenRoute';
}

/// generated route for
/// [_i36.FullScreen]
class FullScreenRoute extends _i54.PageRouteInfo<FullScreenRouteArgs> {
  FullScreenRoute({
    _i55.Key? key,
    required String videoId,
    bool isVertical = false,
  }) : super(
          FullScreenRoute.name,
          path: '/full-screen',
          args: FullScreenRouteArgs(
            key: key,
            videoId: videoId,
            isVertical: isVertical,
          ),
        );

  static const String name = 'FullScreenRoute';
}

class FullScreenRouteArgs {
  const FullScreenRouteArgs({
    this.key,
    required this.videoId,
    this.isVertical = false,
  });

  final _i55.Key? key;

  final String videoId;

  final bool isVertical;

  @override
  String toString() {
    return 'FullScreenRouteArgs{key: $key, videoId: $videoId, isVertical: $isVertical}';
  }
}

/// generated route for
/// [_i37.HomeFeedPage]
class HomeFeedPageRoute extends _i54.PageRouteInfo<void> {
  const HomeFeedPageRoute()
      : super(
          HomeFeedPageRoute.name,
          path: '',
        );

  static const String name = 'HomeFeedPageRoute';
}

/// generated route for
/// [_i38.YouPage]
class YouPageRoute extends _i54.PageRouteInfo<void> {
  const YouPageRoute({List<_i54.PageRouteInfo>? children})
      : super(
          YouPageRoute.name,
          path: 'you-page',
          initialChildren: children,
        );

  static const String name = 'YouPageRoute';
}

/// generated route for
/// [_i39.LifePage]
class LifePageRoute extends _i54.PageRouteInfo<void> {
  const LifePageRoute()
      : super(
          LifePageRoute.name,
          path: 'life-page',
        );

  static const String name = 'LifePageRoute';
}

/// generated route for
/// [_i40.ReelsPage]
class ReelsPageRoute extends _i54.PageRouteInfo<void> {
  const ReelsPageRoute()
      : super(
          ReelsPageRoute.name,
          path: 'reels-page',
        );

  static const String name = 'ReelsPageRoute';
}

/// generated route for
/// [_i41.MorePage]
class MorePageRoute extends _i54.PageRouteInfo<void> {
  const MorePageRoute()
      : super(
          MorePageRoute.name,
          path: 'more-page',
        );

  static const String name = 'MorePageRoute';
}

/// generated route for
/// [_i42.ArticlesByCategoryPage]
class ArticlesByCategoryPageRoute extends _i54.PageRouteInfo<void> {
  const ArticlesByCategoryPageRoute()
      : super(
          ArticlesByCategoryPageRoute.name,
          path: '',
        );

  static const String name = 'ArticlesByCategoryPageRoute';
}

/// generated route for
/// [_i43.CollectionPage]
class CollectionPageRoute extends _i54.PageRouteInfo<void> {
  const CollectionPageRoute()
      : super(
          CollectionPageRoute.name,
          path: 'collection-page',
        );

  static const String name = 'CollectionPageRoute';
}

/// generated route for
/// [_i44.PersonalDetailsTab]
class PersonalDetailsTabRoute extends _i54.PageRouteInfo<void> {
  const PersonalDetailsTabRoute()
      : super(
          PersonalDetailsTabRoute.name,
          path: '',
        );

  static const String name = 'PersonalDetailsTabRoute';
}

/// generated route for
/// [_i45.PasswordTab]
class PasswordTabRoute extends _i54.PageRouteInfo<void> {
  const PasswordTabRoute()
      : super(
          PasswordTabRoute.name,
          path: 'password-tab',
        );

  static const String name = 'PasswordTabRoute';
}

/// generated route for
/// [_i46.LikesTab]
class LikesTabRoute extends _i54.PageRouteInfo<void> {
  const LikesTabRoute()
      : super(
          LikesTabRoute.name,
          path: '',
        );

  static const String name = 'LikesTabRoute';
}

/// generated route for
/// [_i47.StoryTellersTab]
class StoryTellersTabRoute extends _i54.PageRouteInfo<void> {
  const StoryTellersTabRoute()
      : super(
          StoryTellersTabRoute.name,
          path: 'story-tellers-tab',
        );

  static const String name = 'StoryTellersTabRoute';
}

/// generated route for
/// [_i48.SupportHelpCenterTabPage]
class SupportHelpCenterTabPageRoute extends _i54.PageRouteInfo<void> {
  const SupportHelpCenterTabPageRoute()
      : super(
          SupportHelpCenterTabPageRoute.name,
          path: '',
        );

  static const String name = 'SupportHelpCenterTabPageRoute';
}

/// generated route for
/// [_i49.SupportContactUsTabPage]
class SupportContactUsTabPageRoute extends _i54.PageRouteInfo<void> {
  const SupportContactUsTabPageRoute()
      : super(
          SupportContactUsTabPageRoute.name,
          path: 'support-contact-us-tab-page',
        );

  static const String name = 'SupportContactUsTabPageRoute';
}

/// generated route for
/// [_i50.SupportShareYourStoryTabPage]
class SupportShareYourStoryTabPageRoute extends _i54.PageRouteInfo<void> {
  const SupportShareYourStoryTabPageRoute()
      : super(
          SupportShareYourStoryTabPageRoute.name,
          path: 'support-share-your-story-tab-page',
        );

  static const String name = 'SupportShareYourStoryTabPageRoute';
}

/// generated route for
/// [_i51.NotificationsTab]
class NotificationsTabRoute extends _i54.PageRouteInfo<void> {
  const NotificationsTabRoute()
      : super(
          NotificationsTabRoute.name,
          path: 'notifications-tab',
        );

  static const String name = 'NotificationsTabRoute';
}

/// generated route for
/// [_i52.EmailsTab]
class EmailsTabRoute extends _i54.PageRouteInfo<void> {
  const EmailsTabRoute()
      : super(
          EmailsTabRoute.name,
          path: 'emails-tab',
        );

  static const String name = 'EmailsTabRoute';
}

/// generated route for
/// [_i53.InterestsTab]
class InterestsTabRoute extends _i54.PageRouteInfo<void> {
  const InterestsTabRoute()
      : super(
          InterestsTabRoute.name,
          path: 'interests-tab',
        );

  static const String name = 'InterestsTabRoute';
}
