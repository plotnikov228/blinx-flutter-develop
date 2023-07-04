import 'package:blinx/domain/entities/avatar.dart';
import 'package:blinx/domain/repostories/avatar_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAvatarsUseCase extends FutureOutputUseCase<List<Avatar>> {
  GetAvatarsUseCase(this._avatarRepository);
  final AvatarRepository _avatarRepository;

  @override
  Future<List<Avatar>> call() => _avatarRepository.getAvatars();
}
