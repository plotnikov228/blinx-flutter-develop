import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ApiConfig {
  String get apiUrl => injector.get<AppFlavor>().baseUrl;
  String get imageUrl => injector.get<AppFlavor>().baseImageUrl;
}
