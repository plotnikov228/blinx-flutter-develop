import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_following_list_state.dart';
part 'get_user_following_list_cubit.freezed.dart';

class GetUserFollowingListCubit extends Cubit<GetUserFollowingListState> {
  GetUserFollowingListCubit() : super(GetUserFollowingListState.initial());
}
