import 'package:blinx/domain/entities/storyteller_wrapper.dart';
import 'package:blinx/domain/repostories/story_tellers_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetStorytellersUsecase {
  GetStorytellersUsecase(this._storytellersRepository);

  final StorytellersRepository _storytellersRepository;

  Future<List<StorytellerWrapper>> call() =>
      _storytellersRepository.getStoryTellers();
}
