part of 'personal_details_cubit.dart';

@freezed
@injectable
class PersonalDetailsState with _$PersonalDetailsState {
  const PersonalDetailsState._();

  factory PersonalDetailsState({
    required User user,
    @Default(false) bool isLoading,
    @Default(false) bool savedSuccessfully,
    @Default(false) bool showDeleteAccountDialog,
    @Default(false) bool deletedSuccessfully,
    ResponseError? error,
  }) = _PersonalDetailsState;

  factory PersonalDetailsState.initial() {
    return PersonalDetailsState(user: User.empty());
  }

  bool get canSave =>
      user.email.isValid && user.name.isValid && user.username.isValid;
}
