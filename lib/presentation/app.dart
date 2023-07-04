import 'package:blinx/domain/preferences/app_preferences.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/nstack/nstack.dart';
import 'package:blinx/presentation/common/cubit/theme/app_theme_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/get_story_teller_cubit.dart';
import 'package:blinx/presentation/feature/home/cubit/like_article_cubit.dart';
import 'package:blinx/presentation/feature/home/home_feed/cubit/now_cubit.dart';
import 'package:blinx/presentation/feature/home/profile/preferences/notifications_tab/cubit/notification_preference_cubit.dart';
import 'package:blinx/presentation/feature/moments/cubit/moments_cubit.dart';
import 'package:blinx/presentation/resources/resources.dart';
import 'package:blinx/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'common/cubit/reels_loop/reels_loop_cubit.dart';
import 'feature/explore/cubit/explore_all_categories_cubit.dart';
import 'feature/home/cubit/home_ab_cubit.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/cubit/get_liked_articles_cubit.dart';
import 'package:blinx/presentation/feature/notifications/cubit/notifications_cubit.dart';
import 'feature/home/reels/cubit/reels_cubit.dart';
import 'feature/home/you/cubit/collection_cubit.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = injector.get<AppRouter>();

  @override
  Widget build(BuildContext context) {

    return Phoenix(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => injector.get<ExploreAllCategoriesCubit>()..loadAllCategories(),
          ),
          BlocProvider(
            create: (_) => injector.get<AppThemeCubit>()..getTheme(),
          ),
          BlocProvider(
            create: (_) => injector.get<NowCubit>()..loadNowContent(),
          ),
          BlocProvider(
            create: (_) => injector.get<HomeAbCubit>(),
          ),
          BlocProvider(
            create: (_) => injector.get<ReelsCubit>()..loadReels(),
          ),
          BlocProvider(
            create: (_) => injector.get<MomentsCubit>(),
          ),
          BlocProvider(
            create: (_) => injector<CollectionCubit>(),
          ),
          BlocProvider(
            create: (_) => injector<GetStoryTellerCubit>()..getStorytellers(),
          ),
          BlocProvider(
            create: (_) => injector.get<LikeArticleCubit>(),
          ),
          BlocProvider(
            create: (_) => injector.get<ReelsLoopCubit>(),
          ),
          BlocProvider(
              create: (_) =>
                  injector<GetLikedArticlesCubit>()..getLikedArticles()),
          BlocProvider(
              create: (_) =>
                  injector<NotificationsCubit>()..loadAllNotifications()),
          BlocProvider(create: (_) => injector<NotificationPreferenceCubit>()),
        ],
        child: Builder(
          builder: (context) {
            final appSharedPreferences = injector.get<AppPreferences>();
            return MaterialApp.router(
              title: 'Blinx',
              debugShowCheckedModeBanner: false,
              themeMode: context
                  .watch<AppThemeCubit>()
                  .state
                  .themeMode, // app is is dark mode by default
              theme: getAppTheme(Brightness.light),
              darkTheme: getAppTheme(Brightness.dark),
              supportedLocales: const <Locale>[
                Locale.fromSubtags(languageCode: 'en'),
                Locale.fromSubtags(languageCode: 'ar'),
              ],
              localizationsDelegates: const <LocalizationsDelegate>[
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: Locale.fromSubtags(
                  languageCode: appSharedPreferences.getLanguage),
              builder: (c, widget) {
                return NStackWidget(
                  child: _SystemLocaleHandlerWidget(child: widget!),
                );
              },
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}

class _SystemLocaleHandlerWidget extends StatefulWidget {
  const _SystemLocaleHandlerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<_SystemLocaleHandlerWidget> createState() =>
      _SystemLocaleHandlerWidgetState();
}

class _SystemLocaleHandlerWidgetState extends State<_SystemLocaleHandlerWidget>
    with WidgetsBindingObserver {
  void _changeAppLocale(Locale locale) {
    final scope = NStackScope.of(context);
    final supportedLocales = scope.nstack.supportedLocales;
    final supportedLocale = supportedLocales.firstWhere(
      (e) => locale.languageCode.startsWith(e.languageCode),
      orElse: () => supportedLocales.first,
    );

    scope.changeLanguage(supportedLocale);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final appSharedPreferences = injector.get<AppPreferences>();
      _changeAppLocale(
          Locale.fromSubtags(languageCode: appSharedPreferences.getLanguage));
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
