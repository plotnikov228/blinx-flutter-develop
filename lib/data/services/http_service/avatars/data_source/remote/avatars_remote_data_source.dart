import 'package:blinx/domain/entities/avatar.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'avatars_remote_data_source.g.dart';

@RestApi()
@lazySingleton
abstract class AvatarsRemoteDataSource {
  @factoryMethod
  factory AvatarsRemoteDataSource(Dio dio) = _AvatarsRemoteDataSource;

  @GET('/avatars')
  Future<List<Avatar>> getAvatars();
}
