import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/entities/storyteller_moments.dart';
import 'package:blinx/domain/preferences/auth_preferences.dart';
import 'package:blinx/domain/repostories/moments_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MarkMomentAsSeenUsecase {
  MarkMomentAsSeenUsecase(this._momentsRepository, this._authPreferences);

  final AuthPreferences _authPreferences;
  final MomentsRepository _momentsRepository;

  Future<void> call(Moment moment) async {
    if (!_authPreferences.isLoggedIn()) {
      throw const ResponseError.invalidLoginCredentials();
    }

    return _momentsRepository.markMomentAsSeen(moment);
  }
}
