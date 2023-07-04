import 'package:blinx/data/services/request_objects/preferences/preference_request_body.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/preferences/get_notification_preferences_usecase.dart';
import 'package:blinx/domain/usecases/preferences/set_notification_preferences_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_preference_cubit.freezed.dart';
part 'notification_preference_state.dart';

@injectable
class NotificationPreferenceCubit extends Cubit<NotificationPreferenceState> {
  NotificationPreferenceCubit(
    this._getNotificationPreferencesUseCase,
    this._setNotificationPreferencesUseCase,
  ) : super(const NotificationPreferenceState());

  final GetNotificationPreferencesUseCase _getNotificationPreferencesUseCase;
  final SetNotificationPreferencesUseCase _setNotificationPreferencesUseCase;
  final messaging = FirebaseMessaging.instance;

  void loadNotificationPreference() {
    if (state.status.isLoading) {
      return;
    }
    _getNotificationPreferencesUseCase.call().then((preference) {
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
    for (var topic in NotificationTopic.values) {
      updateSubscriptionState(value, topic);
    }
    emit(state.copyWith(
      areAllTurnedOn: value,
      latestUpdates: value,
      forYou: value,
      trending: value,
      breakingStories: value,
      storytellerUpdates: value,
    ));

    final input = _getPreferenceRequestBody();

    _setNotificationPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onLatestUpdatesChange(bool value) {
    var topic = NotificationTopic.latestUpdates;
    updateSubscriptionState(value, topic);
    emit(state.copyWith(
      latestUpdates: value,
    ));

    final input = _getPreferenceRequestBody();

    _setNotificationPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onForYouChange(bool value) {
    var topic = NotificationTopic.forYou;
    updateSubscriptionState(value, topic);
    emit(state.copyWith(
      forYou: value,
    ));

    final input = _getPreferenceRequestBody();

    _setNotificationPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onTrendingChange(bool value) {
    var topic = NotificationTopic.trending;
    updateSubscriptionState(value, topic);
    emit(state.copyWith(
      trending: value,
    ));

    final input = _getPreferenceRequestBody();

    _setNotificationPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onBreakingStoriesChange(bool value) {
    var topic = NotificationTopic.breakingStories;
    updateSubscriptionState(value, topic);
    emit(state.copyWith(
      breakingStories: value,
    ));

    final input = _getPreferenceRequestBody();

    _setNotificationPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void onStorytellerUpdatesChange(bool value) {
    var topic = NotificationTopic.storytellerUpdates;
    updateSubscriptionState(value, topic);
    emit(state.copyWith(
      storytellerUpdates: value,
    ));

    final input = _getPreferenceRequestBody();

    _setNotificationPreferencesUseCase.call(input).onError((error, stackTrace) {
      emit(state.copyWith(
          status: BaseStatus.failure(ResponseError.from(error!))));
    });
  }

  void updateSubscriptionState(bool enabled, NotificationTopic topic) {
    if (enabled) {
      messaging.subscribeToTopic(topic.stringValue);
    } else {
      messaging.subscribeToTopic(topic.stringValue);
    }
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

enum NotificationTopic {
  latestUpdates,
  forYou,
  trending,
  breakingStories,
  storytellerUpdates,
}

extension NotificationTopicExtension on NotificationTopic {
  String get stringValue {
    switch (this) {
      case NotificationTopic.latestUpdates:
        return 'Latest_Updates';
      case NotificationTopic.forYou:
        return 'For_You';
      case NotificationTopic.trending:
        return 'Trending';
      case NotificationTopic.breakingStories:
        return 'Breaking_Stories';
      case NotificationTopic.storytellerUpdates:
        return 'Storyteller_Updates';
      default:
        return '';
    }
  }
}
