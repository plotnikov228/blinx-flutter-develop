import 'package:blinx/data/repositories/storyteller/storyteller_remote_datasource.dart';
import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/domain/repostories/story_tellers_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: StorytellersRepository)
class BaseStorytellerRepository implements StorytellersRepository {
  BaseStorytellerRepository(this.remoteDatasource);

  final StorytellerRemoteDatasource remoteDatasource;

  @override
  Future<List<StorytellerWrapper>> getStoryTellers() {
    // TODO: implement offline-first strategy
    return remoteDatasource.getStoryTellers();
  }

  @override
  Future<void> followStoryteller(String storytellerPath) {
    // TODO: implement offline-first strategy
    return remoteDatasource.followStoryteller(storytellerPath);
  }

  @override
  Future<void> unfollowStoryteller(String storytellerPath) {
    // TODO: implement offline-first strategy
    return remoteDatasource.unfollowStoryteller(storytellerPath);
  }
}
