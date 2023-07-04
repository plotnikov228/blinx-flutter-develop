import 'package:blinx/domain/entities/preference.dart';
import 'package:blinx/domain/repostories/preferences_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNotificationPreferencesUseCase
    extends OutputUseCase<Future<Preference>> {
  final PreferencesRepository _preferencesRepository;

  GetNotificationPreferencesUseCase(this._preferencesRepository);

  @override
  Future<Preference> call() {
    return _preferencesRepository.getNotificationPreferences();
  }
}
