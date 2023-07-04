import 'package:blinx/data/services/http_service/auth/source/local/auth_local_data_source.dart';
import 'package:blinx/data/services/http_service/auth/source/remote/auth_remote_data_source.dart';
import 'package:blinx/data/services/request_objects/auth/email_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/login_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/registration_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/update_user_request_body.dart';
import 'package:blinx/data/services/request_objects/avatar/avatar_request_body.dart';
import 'package:blinx/data/services/response_objects/auth/login_reponse.dart';
import 'package:blinx/data/services/response_objects/auth/registration_reponse.dart';
import 'package:blinx/domain/entities/email.dart';
import 'package:blinx/domain/entities/user.dart';
import 'package:blinx/domain/entities/username.dart';
import 'package:blinx/domain/services/auth_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthService)
class BaseAuthService extends AuthService {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  BaseAuthService(this._authRemoteDataSource, this._authLocalDataSource);

  @override
  Future<LoginResponse> login(LoginRequestBody body) async {
    final loginResponse = await _authRemoteDataSource.login(body);
    await _authLocalDataSource.setUser(loginResponse.getEntity());
    await _authLocalDataSource.setAccessToken(loginResponse.token);

    return loginResponse;
  }

  @override
  Future<RegistrationResponse> register(RegistrationRequestBody body) async {
    final registrationResponse = await _authRemoteDataSource.register(body);
    final user = User(
      id: registrationResponse.id,
      email: Email(registrationResponse.email),
      name: Username(registrationResponse.username),
      username: Username(registrationResponse.username),
      avatar: null,
    );
    await _authLocalDataSource.setUser(user);
    await _authLocalDataSource.setAccessToken(registrationResponse.token);

    return registrationResponse;
  }

  @override
  Future<User?> getSavedUser() async {
    return _authLocalDataSource.getSavedUser();
  }

  @override
  Stream<User> getStreamingUser() => _authLocalDataSource.getStreamingUser();

  @override
  Future<void> logOut() async {
    await _authLocalDataSource.logout();
    // TODO: implement remote data source logout
    // _authRemoteDataSource.logout();
  }

  @override
  Future<void> updateUser(UpdateUserRequestBody body) async {
    final updateUserResponse = await _authRemoteDataSource.updateUser(body);

    final user = User(
      id: updateUserResponse.id,
      email: Email(updateUserResponse.email),
      name: Username(updateUserResponse.name ?? ''),
      username: Username(updateUserResponse.username),
      avatar: updateUserResponse.avatar,
    );
    await _authLocalDataSource.setUser(user);
  }

  @override
  Future<void> deleteAccount() => _authRemoteDataSource.deleteAccount();

  @override
  Future<void> forgotPassword(EmailRequestBody body) =>
      _authRemoteDataSource.forgotPassword(body);

  @override
  Future<void> saveAvatars(AvatarRequestBody avatarRequestBody) async {
    final updateUserResponse =
        await _authRemoteDataSource.saveAvatars(avatarRequestBody);

    final user = User(
      id: updateUserResponse.id,
      email: Email(updateUserResponse.email),
      name: Username(updateUserResponse.name ?? ''),
      username: Username(updateUserResponse.username),
      avatar: updateUserResponse.avatar,
    );
    await _authLocalDataSource.setUser(user);
  }
}
