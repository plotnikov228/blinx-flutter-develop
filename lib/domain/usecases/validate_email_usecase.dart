import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CheckEmailAlreadyRegisteredUseCase extends UseCase<String, Future<bool>> {
  @override
  Future<bool> call(String input) async {
    //  TODO: check if email is already registered
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
