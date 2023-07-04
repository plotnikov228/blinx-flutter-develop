import 'package:blinx/data/services/request_objects/auth/email_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/login_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/registration_request_body.dart';
import 'package:blinx/data/services/request_objects/auth/update_user_request_body.dart';
import 'package:blinx/data/services/request_objects/avatar/avatar_request_body.dart';
import 'package:blinx/data/services/response_objects/auth/login_reponse.dart';
import 'package:blinx/data/services/response_objects/auth/registration_reponse.dart';
import 'package:blinx/data/services/response_objects/auth/update_user_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_data_source.g.dart';

@RestApi()
@LazySingleton()
abstract class AuthRemoteDataSource {
  @factoryMethod
  factory AuthRemoteDataSource(Dio dio) = _AuthRemoteDataSource;

  @POST('/auth/login')
  Future<LoginResponse> login(
    @Body() LoginRequestBody body,
  );

  @POST('/auth/register')
  Future<RegistrationResponse> register(
    @Body() RegistrationRequestBody body,
  );

  @PUT('/user')
  Future<UpdateUserResponse> updateUser(
    @Body() UpdateUserRequestBody body,
  );

  @DELETE('/user')
  Future<void> deleteAccount();

  @POST('/auth/forgot')
  Future<void> forgotPassword(
    @Body() EmailRequestBody body,
  );

  @PUT('/user')
  Future<UpdateUserResponse> saveAvatars(
    @Body() AvatarRequestBody body,
  );
}
