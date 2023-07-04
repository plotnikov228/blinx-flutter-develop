import 'package:blinx/domain/entities/avatar.dart';

abstract class AvatarRepository {
  Future<List<Avatar>> getAvatars();
}
