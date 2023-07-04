import 'package:auto_route/auto_route.dart';
import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/main_common.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/widgets/app_bar/blinx_app_bar.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_ui_widgets/icon/gradient_icon.dart';
import 'cubit/home_ab_cubit.dart';
import 'cubit/home_ab_state.dart';
import 'profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'reels/cubit/reels_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemTap(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }

  @override
  void initState() {
    super.initState();
    context.read<MomentsCubit>().loadMoments();
    notificationStream.listen((notification) {
      handleDynamicLink(notification);
    });
  }

  void handleDynamicLink(RemoteMessage notification) {
    final tabsRouter = AutoTabsRouter.of(context);
    if (notification.data.containsKey('topic')) {
      // The notification has a predefined topic
      var topic = notification.data['topic'];
      if (topic == NotificationTopic.trending.stringValue) {
        context.navigateTo(const SeeAllArticlesScreenRoute());
      } else if (topic == NotificationTopic.forYou.stringValue) {
        tabsRouter.setActiveIndex(1);
      } else if (topic == NotificationTopic.breakingStories.stringValue) {
        tabsRouter.setActiveIndex(2);
      } else if (topic == NotificationTopic.latestUpdates.stringValue) {
        tabsRouter.setActiveIndex(4);
        context.navigateTo(const SeeAllArticlesScreenRoute());
      } else if (topic == NotificationTopic.storytellerUpdates.stringValue) {
        context.read<GetStoryTellerCubit>().getStorytellers();
        var storyTeller = context.read<GetStoryTellerCubit>().state.storytellersWrappers.firstWhere((storyteller) {
          return storyteller.storyteller.path == notification.data['id'];
        });
        context.navigateTo(StoryTellerDetailsPageRoute(storyteller: storyTeller.storyteller));
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.nav;
    return BlocBuilder<HomeAbCubit, HomeAbState>(builder: (context, state) {
      return AutoTabsScaffold(
        animationCurve: Curves.linear,
        animationDuration: Duration.zero,
        resizeToAvoidBottomInset: false,
        appBarBuilder: state.showAb
            ? (_, tabsRouter) {
                if (tabsRouter.activeIndex == 3) {
                  return const PreferredSize(
                    preferredSize: Size.zero,
                    child: SizedBox.shrink(),
                  );
                }
                return BlinxAppBar.home();
              }
            : null,
        routes: const [
          HomeFeedPageRoute(),
          ReelsPageRoute(),
          LifePageRoute(),
          YouPageRoute(),
          // MorePageRoute(),
        ],
        backgroundColor: context.colors.background,
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            backgroundColor: context.colors.background,
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: context.colors.text,
            selectedLabelStyle: AppTextStyles.bodySmall,
            unselectedLabelStyle: AppTextStyles.bodySmall,
            onTap: (index) {
              context.read<ReelsCubit>().update(null);
              context.read<HomeAbCubit>().update(true);
              _onItemTap(index, tabsRouter);
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Assets.icons.navNow.svg(color: context.colors.text),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Assets.icons.navNow.svg(),
                ),
                label: i18n.now,
              ),
              
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Assets.icons.navReels.svg(color: context.colors.text),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Assets.icons.navReels.svg(),
                ),
                label: context.localization.defaultSection.blinx,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Assets.icons.navLife.svg(color: context.colors.text),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Assets.icons.navLife.svg(),
                ),
                label: i18n.life,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: GradientIcon(
                    size: 30,
                    Icons.person,
                    // IconData(Assets.icons.navProfile.hashCode),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors:  [
                        context.colors.text,
                        context.colors.text,
                      ],
                    ),
                  ),
                ),
                activeIcon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  child: GradientIcon(
                    size: 30,
                    Icons.person,
                    // IconData(Assets.icons.navProfile.hashCode),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors:  [
                        Color.fromRGBO(10, 232, 255, 1),
                        Color.fromRGBO(0, 67, 239, 1),
                      ],
                    ),
                  ),
                ),
                label: i18n.profile,
              ),
            ],
          );
        },
      );
    });
  }
}
