import 'package:blinx/domain/repostories/story_tellers_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FollowStorytellersUsecase {
  FollowStorytellersUsecase(this._storytellersRepository);

  final StorytellersRepository _storytellersRepository;

  Future<void> follow(String storytellerPath) =>
      _storytellersRepository.followStoryteller(storytellerPath);
}
