import '../../../../../domain/entities/article.dart';

class ReelsRow {
  final List<Article> reelsList;
  ReelsRow({required this.reelsList});
}

enum ReelsRowType {
  Red,
  Blue,
  Green
}

