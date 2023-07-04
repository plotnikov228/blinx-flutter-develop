import 'package:blinx/domain/entities/storyteller_wrapper.dart';

abstract class StorytellersRepository {
  Future<List<StorytellerWrapper>> getStoryTellers();

  Future<void> followStoryteller(String storytellerPath);

  Future<void> unfollowStoryteller(String storytellerPath);
}
