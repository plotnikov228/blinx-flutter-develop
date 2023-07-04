import 'package:blinx/data/services/http_service/reels/source/remote/reels_remote_data_source.dart';
import 'package:blinx/data/services/response_objects/reels/reels_response.dart';
import 'package:blinx/domain/repostories/reels_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ReelsRepository)
class ReelsRepositoryImpl implements ReelsRepository {
  ReelsRepositoryImpl(this._reelsRemoteDataSource);

  final ReelsRemoteDataSource _reelsRemoteDataSource;

  @override
  Future<ReelsResponse> getReels(int page) =>
      _reelsRemoteDataSource.getReels(page);
}
