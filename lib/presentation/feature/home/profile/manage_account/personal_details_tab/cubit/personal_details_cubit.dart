import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:blinx/domain/preferences/user_preferences.dart';
import 'package:blinx/domain/usecases/personal_details/delete_account_usecase.dart';
import 'package:blinx/domain/usecases/personal_details/save_personal_details_usecase.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/utils/my_cognito_user_pool.dart';
import 'package:blinx/presentation/widgets/snackbar/app_snackbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'personal_details_state.dart';
part 'personal_details_cubit.freezed.dart';

@injectable
class PersonalDetailsCubit extends Cubit<PersonalDetailsState> {
  PersonalDetailsCubit(
    this._savePersonalDetailsUseCase,
    this._deleteAccountUseCase,
    this._userPreferences,
  ) : super(PersonalDetailsState.initial());

  final SavePersonalDetailsUseCase _savePersonalDetailsUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;
  final UserPreferences _userPreferences;

  void init() {
    emit(state.copyWith(
      isLoading: true,
    ));
    _userPreferences.getStreamingUser().listen((user) {

      emit(state.copyWith(
        user: user,
        isLoading: false,
      ));
    });
  }

  void savePersonalDetails(context) async {
    if (state.isLoading) return;

    emit(state.copyWith(
      error: null,
      isLoading: true,
      savedSuccessfully: false,
    ));

    if (/*injector.get<AppFlavor>().name == 'production'*/true) {
      final userPool = MyCognitoUserPool.getCognitoUserPool();
      var currentUser=await userPool.getCurrentUser();

      if(currentUser!=null) {
        var session = await currentUser.getSession();

        if (session!.isValid()) {
          final List<CognitoUserAttribute> attributes = [];
          attributes.add(CognitoUserAttribute(name: 'name', value: state.user.name.value));

          try {
            await currentUser.updateAttributes(attributes);
            var userPreferences = injector.get<UserPreferences>();
            var nu= await userPreferences.getUser();

            if(nu!=null) {

              await userPreferences.setUser(nu.copyWith(
                name: state.user.name,
              ));

              emit(state.copyWith(
                isLoading: false,
                savedSuccessfully: true,
              ));
            } else {
              emit(state.copyWith(
                isLoading: false,
                savedSuccessfully: false,
              ));
            }
          } catch (e) {
            print(e);
            emit(state.copyWith(
              isLoading: false,
              savedSuccessfully: false,
            ));

            AppSnackBar.showErrorMessage(
              context,
              title: 'Error',
            );

          }
        }
      } else {
        emit(state.copyWith(
          isLoading: false,
          savedSuccessfully: false,
        ));
      }
    } else {
      _savePersonalDetailsUseCase
          .call(PersonalDetailsInput(
          state.user.name.value, state.user.username.value))
          .then((value) {
        emit(state.copyWith(
          isLoading: false,
          savedSuccessfully: true,
        ));
      }).onError((Object error, stackTrace) {
        emit(state.copyWith(
          isLoading: false,
          error: ResponseError.from(error),
        ));
      });
    }
  }

  void setName(String name) {
    emit(state.copyWith(
      savedSuccessfully: false,
      user: state.user.copyWith(name: Username(name)),
      error: null,
    ));
  }

  void setUserName(String username) {
    emit(state.copyWith(
      savedSuccessfully: false,
      user: state.user.copyWith(username: Username(username)),
      error: null,
    ));
  }

  void showDeleteAccountDialog() {
    emit(state.copyWith(
      savedSuccessfully: false,
      showDeleteAccountDialog: false,
    ));
    emit(state.copyWith(
      showDeleteAccountDialog: true,
    ));
  }

  void deleteAccount() {
    if (state.isLoading) return;
    emit(state.copyWith(
      error: null,
      isLoading: true,
      deletedSuccessfully: false,
    ));

    _deleteAccountUseCase.call().then((value) {
      emit(state.copyWith(
        isLoading: false,
        deletedSuccessfully: true,
      ));
    }).onError((Object error, stackTrace) {
      emit(state.copyWith(
        isLoading: false,
        deletedSuccessfully: false,
        error: ResponseError.from(error),
      ));
    });
  }
}
