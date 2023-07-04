import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/widgets/app_button.dart';
import 'package:blinx/presentation/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blinx/presentation/widgets/app_bar/ui/leading_action_button.dart';
import 'package:blinx/presentation/widgets/app_text.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/follow_story_teller_state.dart';

class FollowingsPage extends StatefulWidget {
  const FollowingsPage({
    Key? key,
    required this.storytellersList,
  }) : super(key: key);
  final List<StorytellerWrapper> storytellersList;

  @override
  State<FollowingsPage> createState() => _FollowingsPageState();
}

class _FollowingsPageState extends State<FollowingsPage> {
  late List<StorytellerWrapper> _storytellersList = widget.storytellersList;
  // List<Category> subcategories = [];
  // late Category? _subCategory =
  //     subcategories.isNotEmpty ? subcategories.first : null;

  @override
  Widget build(BuildContext context) {
    const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      childAspectRatio: .780,
    );

    final scrollController = ScrollController();
    
    return BlocProvider(
      create: (_) => injector<FollowStoryTellerCubit>(),
      child: Scaffold(
      appBar: ScrollAppBar(
        elevation: 0,
        backgroundColor: context.colors.background,
        controller: scrollController,
        title: AppText.body800(
            context.localization.profile.xFollowing,
            fontSize: 20,
          ),
        leading: const Padding(
          padding: EdgeInsetsDirectional.all(8.0),
          child: LeadingActionButton(),
        ),
        // bottom: const Text('azerazer'),
      ),
      // BlinxAppBar.normal(
      //   title: context.localization.profile.xFollowing,
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          gridDelegate: gridDelegate, 
          itemCount: _storytellersList.length,
          itemBuilder: (context, index){
            _storytellersList[index].storyteller.tags.map((e) {});

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: context.colors.bottomSheetBackground,

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15
                ),
                child: Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: ()=> context.router.push(
                          StoryTellerDetailsPageRoute(
                            storyteller: _storytellersList[index].storyteller,
                          ),
                        ),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: AppNetworkImage(
                              imageUrl: _storytellersList[index].storyteller.avatarImageUrl
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: ()=> context.router.push(
                          StoryTellerDetailsPageRoute(
                            storyteller: _storytellersList[index].storyteller,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 9
                          ),
                          child: AppText.body500(
                            _storytellersList[index].storyteller.displayName,
                            fontSize: 16,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 3
                        ),
                        child: AppText.body300(
                            '${_storytellersList[index].articlesCount.toString()} ${
                              _storytellersList[index].articlesCount==1?
                                context.localization.profile.story:
                                _storytellersList[index].articlesCount<=10?
                                  context.localization.profile.stories:
                                  context.localization.profile.multipleStories}',
                          fontSize: 12,
                          color: context.colors.textGrey,
                        ),
                      ),

                      BlocBuilder<FollowStoryTellerCubit, FollowStoryTellerState>(
                        builder: (context, state) {
                          return Padding(
                              padding: const EdgeInsets.only(
                                top: 10
                              ),
                              child: SizedBox(
                                height: 28,
                                child:
                                //  _storytellersList[index].storyteller.followed?
                                        AppButton.rounded(
                                          title: _storytellersList[index].storyteller.followed?
                                                    context.localization.activity.unfollow:
                                                    context.localization.activity.follow,
                                          onPressed: (){
                                              context.read<FollowStoryTellerCubit>().call(
                                                  _storytellersList[index].storyteller,context, f: (v) {
                                                    v
                                                      ? _storytellersList[index].storyteller.followed = true
                                                      : _storytellersList[index].storyteller.followed = false;
                          
                                                    //GetStoryTellerCubit followingsCubit = BlocProvider.of<GetStoryTellerCubit>(context);
                                                    //followingsCubit.getStorytellers();

                                                    // context.read<GetStoryTellerCubit>().getStorytellers();

                                                  }
                                              );
                                          }
                                        )
                                        // :
                                        //   AppButton.roundedOutlined(
                                        //   title: context.localization.activity.follow,
                                        //   onPressed: (){
                                        //       context.read<FollowStoryTellerCubit>().call(
                                        //           _storytellersList[index].storyteller,f: (v) {
                                        //             v
                                        //               ? _storytellersList[index].storyteller.followed = true
                                        //               : _storytellersList[index].storyteller.followed = false;
                                        //           }
                                        //       );
                                        //   }
                                        // )
                              ),
                          );
                        }
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: tagsTextBuilder(_storytellersList[index].storyteller.tags,context),
                      ),
                      // _storytellersList[index].storyteller.tags.isNotEmpty?Text(_storytellersList[index].storyteller.tags.first):SizedBox(),
                    ],
                  )
                ),
              ),
            );
          }
        ),
      ) 
      
        
      )
    );
  }
}

Widget tagsTextBuilder(List<String> tagsList, BuildContext context){
  if(tagsList.isEmpty) {
    return const SizedBox();
  }

  var returnedText = tagsList.first;
  for (var i = 1; i < tagsList.length; i++) {
  returnedText='$returnedText • ${tagsList[i]}';
}
  
return AppText.
  body(
    returnedText,
    textAlign: TextAlign.center,
    color: context.colors.text.withOpacity(0.5),
  );
}
