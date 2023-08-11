import 'package:flutter/rendering.dart';

import 'presentation/app_flavor.dart';
import 'main_common.dart';

void main() async {
  const config = AppFlavor.production;
  mainCommon(config);
}
