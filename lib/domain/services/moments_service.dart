import 'package:blinx/data/services/response_objects/moments/moments_response.dart';

abstract class MomentsService {
  Future<List<MomentsResponse>> getMoments();

  Future<void> markMomentAsSeen(String momentPath);

  Future<void> likeMoment(String momentPath);

  Future<void> unlikeMoment(String momentPath);
}
