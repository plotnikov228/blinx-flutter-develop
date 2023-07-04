import 'package:blinx/domain/entities/content/content.dart';
import 'package:blinx/domain/repostories/content_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetNowContentUseCase {
  GetNowContentUseCase(this._contentRepository);

  final ContentRepository _contentRepository;

  Future<Content> call() async {
    final content = await _contentRepository.getNowContents();
    return content;
  }
}
