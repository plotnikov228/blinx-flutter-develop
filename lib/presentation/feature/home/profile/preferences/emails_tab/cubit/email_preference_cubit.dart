import 'package:blinx/data/services/request_objects/preferences/preference_request_body.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/preferences/get_email_preferences_usecase.dart';
import 'package:blinx/domain/usecases/preferences/set_email_preferences_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'email_preference_state.dart';
part 'email_preference_cubit.freezed.dart';

@injectable
class EmailPreferenceCubit extends Cubit<EmailPreferenceState> {
  EmailPreferenceCubit(
    this._getEmailPreferencesUseCase,
    this._setEmailPreferencesUseCase,
  ) : super(const EmailPreferenceState());

  final GetEmailPreferencesUseCase _getEmailPreferencesUseCase;
  final SetEmailPreferencesUseCase _setEmailPreferencesUseCase;

  void loadEmailPreference() {
    if (state.status.isLoading) {
      return;
    }
    _getEmailPreferencesUseCase.call().then((preference) {
      emit(state.copyWith(
        areAllTurnedOn: preference.areAllTurnedOn,
        latestUpdates: preference.latestUpdates,
        forYou: preference.forYou,
        trending: preference.trending,
        breakingStories: preference.breakingStories,
        storytellerUpdates: preference.storytellerUpdates,
      ));
    });
  }

  void onAllItemsChange(bool value) {
    emit(state.copyWith(
      areAllTurnedOn: value,
      latestUpdates: value,
      forYou: value,
      trending: value,
      breakingStories: value,
      storytellerUpdates: value,
    ));

    final input = _getPreferenceRequestBody();

    _setEmailPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onLatestUpdatesChange(bool value) {
    emit(state.copyWith(
      latestUpdates: value,
    ));

    final input = _getPreferenceRequestBody();

    _setEmailPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onForYouChange(bool value) {
    emit(state.copyWith(
      forYou: value,
    ));

    final input = _getPreferenceRequestBody();

    _setEmailPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onTrendingChange(bool value) {
    emit(state.copyWith(
      trending: value,
    ));

    final input = _getPreferenceRequestBody();

    _setEmailPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onBreakingStoriesChange(bool value) {
    emit(state.copyWith(
      breakingStories: value,
    ));

    final input = _getPreferenceRequestBody();

    _setEmailPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onStorytellerUpdatesChange(bool value) {
    emit(state.copyWith(
      storytellerUpdates: value,
    ));

    final input = _getPreferenceRequestBody();

    _setEmailPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  PreferenceRequestBody _getPreferenceRequestBody() {
    final body = PreferenceRequestBody(
      latestUpdates: state.latestUpdates,
      forYou: state.forYou,
      trending: state.trending,
      breakingStories: state.breakingStories,
      storytellerUpdates: state.storytellerUpdates,
    );

    return body;
  }
}
