import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/domain/repostories/moments_repository.dart';
import 'package:blinx/domain/services/moments_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MomentsRepository)
class BaseMomentsRepository extends MomentsRepository {
  BaseMomentsRepository(this._remoteSource);

  final MomentsService _remoteSource;

  @override
  Future<List<StorytellerMoments>> getMoments() async {
    // TODO: implement offline-first
    final response = await _remoteSource.getMoments();
    return response.map((e) => e.getEntity()).toList();
  }

  @override
  Future<void> markMomentAsSeen(Moment moment) {
    return _remoteSource.markMomentAsSeen(moment.path);
  }

  @override
  Future<void> likeMoment(String momentPath) {
    return _remoteSource.likeMoment(momentPath);
  }

  @override
  Future<void> unlikeMoment(String momentPath) {
    return _remoteSource.unlikeMoment(momentPath);
  }
}
