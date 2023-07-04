import 'package:blinx/domain/entities/storyteller_moments.dart';

abstract class MomentsRepository {
  Future<List<StorytellerMoments>> getMoments();

  Future<void> markMomentAsSeen(Moment moment);

  Future<void> likeMoment(String momentPath);

  Future<void> unlikeMoment(String momentPath);
}
