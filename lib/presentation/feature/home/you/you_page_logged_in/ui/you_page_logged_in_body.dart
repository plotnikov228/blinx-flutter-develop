import 'package:blinx/gen/assets.gen.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_state.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/user_profile_collection/user_profile_collection.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:blinx/presentation/feature/home/profile/ui/profile_name_section.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/liked_content_tab/liked_content_tab.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/ui/user_notifications/notifications_content.dart';

class YouPageLoggedInBody extends StatelessWidget {
    YouPageLoggedInBody({
    super.key,
    required this.scrollController,
    required this.tController,
    required this.focusedIndex
  });

  final ScrollController scrollController;
  final TabController tController;
  int focusedIndex;

  @override
  Widget build(BuildContext context) {
    final i18n = context.localization.profile;
    return NestedScrollView(
      controller: scrollController,
      headerSliverBuilder: (context, value) {
        return  [
          SliverToBoxAdapter(child: Column(
            children: [
              Center(
                child: Assets.icons.profileIcon.svg(),
              ),
  
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 23.75),
                  child: ProfileNameSection(),
                ),
              ),
  
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: BlocBuilder<GetStoryTellerCubit, GetStoryTellerState>(
                    builder: (context, state) {
                      final storytellerState = state;
                      return AppButton.text(
                        textColor: context.colors.text,
                        title: '${state.storytellersCount.toString()} ${i18n.xFollowing}',
                        onPressed: (){
                          context.navigateTo(FollowingsPageRoute(storytellersList: storytellerState.storytellersWrappers));
                        },
                      ); 
                    }
                  ),
                ),
              ),

              // Tab Bar
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(255, 69, 69, 69),
                      width: 1.0
                    )
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TabBar(
                    indicatorColor: const Color.fromARGB(255, 0, 102, 255),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelPadding: const EdgeInsets.only(bottom: 10, top: 10),                      
                    controller: tController,
                    
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Assets.icons.heartOutlined.svg(
                          color: focusedIndex==0?
                                    context.colors.text:
                                    context.colors.text.withOpacity(0.5),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Assets.icons.collection.svg(
                          color: focusedIndex==1?
                                    context.colors.text:
                                    context.colors.text.withOpacity(0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, left: 15),
                        child: Assets.icons.notifications.svg(
                          color: focusedIndex==2?
                                    context.colors.text:
                                    context.colors.text.withOpacity(0.5),
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ],
          ))
        ];
      },
      body: TabBarView(
        controller: tController,
        children: const [
          LikedContentTab(),
          UserCollectionPage(),
          NotificationsContent()
        ]
      ),
    );
  }
}