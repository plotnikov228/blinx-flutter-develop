import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/repostories/moments_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMomentsUsecase {
  GetMomentsUsecase(this._momentsRepository, this._authPreferences);

  final AuthPreferences _authPreferences;
  final MomentsRepository _momentsRepository;

  Future<List<StorytellerMoments>> call() async {
    if (!_authPreferences.isLoggedIn()) {
      return throw const ResponseError.invalidLoginCredentials();
    }

    final moments = await _momentsRepository.getMoments();
    // Sort the moments by their seen state so the seen moments comes at the end
    // of the list.
    moments.sort((first, second) {
      if (!first.seenByCurrentUser) {
        return 1;
      } else if (second.seenByCurrentUser) {
        return -1;
      }
      return 0;
    });
    return moments;
  }
}
