
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:blinx/domain/entities/article.dart';
import 'home_ab_state.dart';

@injectable
class HomeAbCubit extends Cubit<HomeAbState> {
  HomeAbCubit() : super(HomeAbState());

  void update(bool nval, {page='', selectedArticle,List<Article> playList=const []}) {
    emit(state.copyWith(
      showAb: nval,
      page: page,
      selectedArticle:selectedArticle,
      playList: playList
    ));
  }
}
