import 'package:blinx/data/services/request_objects/preferences/preference_request_body.dart';
import 'package:blinx/domain/repostories/preferences_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class SetEmailPreferencesUseCase
    extends UseCase<PreferenceRequestBody, Future<void>> {
  final PreferencesRepository _preferencesRepository;

  SetEmailPreferencesUseCase(this._preferencesRepository);

  @override
  Future<void> call(PreferenceRequestBody input) {
    return _preferencesRepository.setEmailPreferences(input);
  }
}
