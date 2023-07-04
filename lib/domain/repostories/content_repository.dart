import 'package:blinx/domain/entities/content/content.dart';

abstract class ContentRepository {
  Future<Content> getNowContents();
  Future<Content> getLifeContents();
  Future<Content> getMoreContents();
}
