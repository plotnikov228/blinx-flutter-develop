import 'package:blinx/data/services/response_objects/reels/reels_response.dart';

abstract class ReelsRepository {
  Future<ReelsResponse> getReels(int page);
}
