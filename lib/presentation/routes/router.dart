import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/feature/articles/article_screen.dart';
import 'package:blinx/presentation/feature/articles/ui/article_comments/article_comments.dart';
import 'package:blinx/presentation/feature/articles/ui/dynamic_templating/full_screen/ui/full_screen.dart';
import 'package:blinx/presentation/feature/confirm_email/confirm_email_screen.dart';
import 'package:blinx/presentation/feature/explore/explore_screen.dart';
import 'package:blinx/presentation/feature/home/category_details/category_details_screen.dart';
import 'package:blinx/presentation/feature/home/home_feed/home_feed_page.dart';
import 'package:blinx/presentation/feature/home/home_screen.dart';
import 'package:blinx/presentation/feature/home/life/life_page.dart';
import 'package:blinx/presentation/feature/home/more/more_page.dart';
import 'package:blinx/presentation/feature/home/profile/activity/activity_screen.dart';
import 'package:blinx/presentation/feature/home/profile/activity/likes_tab/likes_tab.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/story_teller_details/story_teller_details_page.dart';
import 'package:blinx/presentation/feature/home/profile/activity/story_tellers_tab/story_tellers_tab.dart';
import 'package:blinx/presentation/feature/home/profile/edit_avatar/edit_avatar_screen.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/manage_account_screen.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/ui/password_tab.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/ui/personal_details_tab.dart';
import 'package:blinx/presentation/feature/home/profile/manage_account/unauthorized_profile_screen.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/emails_tab/emails_tab.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/interests_tab/interests_tab.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_preferences.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/notifications_tab.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/preferences_screen.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/settings_screen.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/ui/settings_display_and_content_section.dart';
import 'package:blinx/presentation/feature/home/profile/profile_page.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/account_information_screen.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/preferences_notifications_screen.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/security_screen.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/language_screen/language_screen.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/terms_and_conditions_screen.dart';
import 'package:blinx/presentation/feature/home/profile/settings_page/video_settings_screen.dart';
import 'package:blinx/presentation/feature/home/reels/reels_page.dart';
import 'package:blinx/presentation/feature/home/reels_details/reels_details_screen.dart';
import 'package:blinx/presentation/feature/home/you/you_page.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/articles_by_category_page/articles_by_category_page.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/collection/collection_page.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/collections_details/collections_details_page.dart';
import 'package:blinx/presentation/feature/login/login_screen.dart';
import 'package:blinx/presentation/feature/moments/moments_screen.dart';
import 'package:blinx/presentation/feature/onboarding/onboarding_screen.dart';
import 'package:blinx/presentation/feature/reset_password/reset_password_screen.dart';
import 'package:blinx/presentation/feature/reset_password/update_password_screen.dart';
import 'package:blinx/presentation/feature/see_all_articles/see_all_articles_screen.dart';
import 'package:blinx/presentation/feature/splash/splash_screen.dart';
import 'package:blinx/presentation/feature/support/support_screen.dart';
import 'package:blinx/presentation/feature/support/ui/support_contact_us/support_contact_us.dart';
import 'package:blinx/presentation/feature/support/ui/support_help_center/support_help_center.dart';
import 'package:blinx/presentation/feature/support/ui/support_share_your_story/support_share_your_story.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_out/ui/authentication_screen.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/followings/followings_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
// import 'package:blinx/presentation/feature/home/profile/settings_page/notifications/notifications_screen.dart';
import 'package:blinx/presentation/feature/notifications/notifications_screen.dart';

import '../feature/home/profile/preferences/ui/settings_display.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, path: '/'),
    AutoRoute(page: LoginScreen, path: '/login'),
    AutoRoute(page: ConfirmEmailScreen, path: '/confirm-email'),
    AutoRoute(page: ResetPasswordScreen, path: '/reset-password'),
    AutoRoute(page: UpdatePasswordScreen, path: '/update-password'),
    AutoRoute(page: HomeScreen, path: '/home', children: [
      AutoRoute(page: HomeFeedPage, initial: true),
      AutoRoute(page: YouPage, children: [
        AutoRoute(page: ArticlesByCategoryPage, initial: true),
        AutoRoute(page: CollectionPage),
      ]),
      AutoRoute(page: LifePage),
      AutoRoute(page: ReelsPage),
      AutoRoute(page: MorePage),
    ]),
    AutoRoute(page: ArticleScreen, path: '/article'),
    AutoRoute(page: ArticleComments, path: '/comments'),
    AutoRoute(page: SeeAllArticlesScreen, path: '/see-all-articles'),
    AutoRoute(page: ProfilePage, path: '/profile'),
    AutoRoute(page: AuthenticationScreen, path: '/authentication'),
    AutoRoute(page: FollowingsPage, path: '/followings-page'),
    AutoRoute(page: MomentsScreen, path: '/moments'),
    AutoRoute(page: ReelsDetailsScreen, path: '/reels'),
    AutoRoute(page: ManageAccountScreen, path: '/manage-account', children: [
      AutoRoute(page: PersonalDetailsTab, initial: true),
      AutoRoute(page: PasswordTab),
    ]),
    AutoRoute(page: UnauthorizedProfileScreen, path: '/unauthorized-profile'),
    AutoRoute(page: NotificationsScreen, path: '/notifications'),
    AutoRoute(
        page: PreferencesNotificationsScreen,
        path: '/preferences-notifications'),
    AutoRoute(page: ActivityScreen, path: '/activity', children: [
      AutoRoute(page: LikesTab, initial: true),
      AutoRoute(page: StoryTellersTab),
    ]),
    AutoRoute(page: StoryTellerDetailsPage, path: 'story-teller'),
    AutoRoute(page: ExploreScreen, path: 'explore'),
    AutoRoute(
      page: SupportScreen,
      path: '/support',
      children: [
        AutoRoute(page: SupportHelpCenterTabPage, initial: true),
        AutoRoute(page: SupportContactUsTabPage),
        AutoRoute(page: SupportShareYourStoryTabPage),
      ],
    ),
    AutoRoute(page: CategoryDetailsScreen, path: 'categories'),
    AutoRoute(page: OnboardingScreen, path: 'onboarding'),
    AutoRoute(page: SettingsScreen, path: '/settings'),
    AutoRoute(
        page: AccountInformationScreen, path: '/settings/account-information'),
    AutoRoute(page: SecurityScreen, path: '/settings/security'),
    AutoRoute(page: TermsAndConditions, path: '/settings/terms-and-conditions'),
    AutoRoute(page: LanguageScreen, path: '/settings/language-screen'),
    AutoRoute(page: VideoSettingsScreen, path: '/settings/video-settings'),

    // AutoRoute(page: NotificationsTab, initial: true),
    AutoRoute(
      page: NotificationsPreferencse,
      path: '/settings/notifications',
      children: [
        AutoRoute(page: NotificationsTab),
        AutoRoute(page: EmailsTab),
      ],
    ),
    AutoRoute(
      page: DisplaySettings,
      path: '/settings/display',
    ),
    AutoRoute(page: PreferencesScreen, path: '/preferences', children: [
      AutoRoute(page: InterestsTab),
    ]),
    AutoRoute(page: CollectionDetailsPage, path: 'collection'),
    AutoRoute(page: EditAvatarScreen, path: '/edit-avatar'),
    AutoRoute(page: FullScreen, path: '/full-screen'),
  ],
)
@Injectable()
class $AppRouter {}
