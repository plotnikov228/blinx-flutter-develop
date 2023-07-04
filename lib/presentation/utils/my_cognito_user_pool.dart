import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/common/storage/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyCognitoUserPool {
  static CognitoUserPool getCognitoUserPool() {
    final prefs = injector.get<SharedPreferences>();
    final storage = Storage(prefs);

    return CognitoUserPool(
      'me-south-1_QahYENITM',
      '38tckvnb3cghbqgaqluofh8ne2',
      storage: storage,
    );
  }
}
