import 'package:blinx/domain/entities/password.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:tuple/tuple.dart';

typedef ChangePasswordInput = Tuple3<Password, Password, Password>;

@injectable
class ChangePasswordUseCase extends UseCase<ChangePasswordInput, Future<bool>> {
  @override
  Future<bool> call(ChangePasswordInput input) async {
    // Todo(Ashraful): implement chnage password
    return true;
  }
}
