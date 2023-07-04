import 'package:blinx/domain/entities/paginated_list/paginated_reels.dart';
import 'package:blinx/domain/repostories/reels_repository.dart';
import 'package:blinx/domain/usecases/use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetReelsUseCase extends OutputUseCase<Future<PaginatedReels>> {
  GetReelsUseCase(this._reelsRepository);

  final ReelsRepository _reelsRepository;

  @override
  Future<PaginatedReels> call({int input = 1}) async {
    final reelsResponse = await _reelsRepository.getReels(input);
    final paginatedReels = PaginatedReels(
      total: reelsResponse.total,
      currentPage: reelsResponse.offset,
      reelsList: reelsResponse.results,
    );

    return paginatedReels;
  }
}
