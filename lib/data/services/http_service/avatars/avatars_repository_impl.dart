import 'package:blinx/domain/entities/avatar.dart';
import 'package:blinx/domain/repostories/avatar_repository.dart';
import 'package:injectable/injectable.dart';

import 'data_source/remote/avatars_remote_data_source.dart';

@LazySingleton(as: AvatarRepository)
class AvatarsRepositoryImpl extends AvatarRepository {
  AvatarsRepositoryImpl(this._avatarsRemoteDataSource);
  final AvatarsRemoteDataSource _avatarsRemoteDataSource;

  @override
  Future<List<Avatar>> getAvatars() => _avatarsRemoteDataSource.getAvatars();
}
