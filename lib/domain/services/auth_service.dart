import 'package:blinx/data/services/request_objects/auth/email_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/login_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/registration_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/update_user_request_body.dart';
import 'package:blinx/data/services/request_objects/avatar/avatar_request_body.dart';
import 'package:blinx/data/services/response_objects/auth/login_reponse.dart';
import 'package:blinx/data/services/response_objects/auth/registration_reponse.dart';
import 'package:blinx/domain/entities/user.dart';

abstract class AuthService {
  Future<LoginResponse> login(LoginRequestBody body);

  Future<RegistrationResponse> register(RegistrationRequestBody body);

  Future<User?> getSavedUser();

  Stream<User> getStreamingUser();

  Future<void> logOut();

  Future<void> updateUser(UpdateUserRequestBody body);

  Future<void> deleteAccount();

  Future<void> forgotPassword(EmailRequestBody body);

  Future<void> saveAvatars(AvatarRequestBody avatarRequestBody);
}
