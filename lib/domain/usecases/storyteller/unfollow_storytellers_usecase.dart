import 'package:blinx/domain/repostories/story_tellers_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UnfollowStorytellersUsecase {
  UnfollowStorytellersUsecase(this._storytellersRepository);

  final StorytellersRepository _storytellersRepository;

  Future<void> unfollow(String storytellerPath) =>
      _storytellersRepository.unfollowStoryteller(storytellerPath);
}
