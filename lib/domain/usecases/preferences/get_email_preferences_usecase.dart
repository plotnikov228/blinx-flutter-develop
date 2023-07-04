import 'package:blinx/domain/entities/preference.dart';
import 'package:blinx/domain/repostories/preferences_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetEmailPreferencesUseCase extends OutputUseCase<Future<Preference>> {
  final PreferencesRepository _preferencesRepository;

  GetEmailPreferencesUseCase(this._preferencesRepository);

  @override
  Future<Preference> call() {
    return _preferencesRepository.getEmailPreferences();
  }
}
