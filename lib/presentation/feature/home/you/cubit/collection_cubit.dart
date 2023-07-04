import 'package:blinx/data/services/response_error.dart';
import 'package:blinx/domain/usecases/collection/collections_usecase.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'collection_state.dart';

@injectable
class CollectionCubit extends Cubit<CollectionState> {
  CollectionCubit(this._collectionsUsecase) : super(CollectionState()) {
    getCollection();
  }
  final CollectionsUsecase _collectionsUsecase;

  void getCollection({enableLoad = true}) {
    if (enableLoad) emit(state.copyWith(status: const BaseStatus.loading()));
    _collectionsUsecase.call().then((collections) {
      emit(state.copyWith(
        collections: collections,
        status: const BaseStatus.success(),
      ));
    }).onError((error, stackTrace) {
      emit(state.copyWith(
        status: BaseStatus.failure(ResponseError.from(error!)),
      ));
    });
  }

  void createCollection(String name) {
    _collectionsUsecase.create(name).then((collections) {
      emit(state.copyWith(
        collections: [
          ...state.collections,
          collections,
        ],
      ));
    });
  }

  void renameCollection(int idCollection, String newName) {
    _collectionsUsecase
        .renameCollection(idCollection, newName)
        .then((collections) {
      emit(state.copyWith(
        collections: state.collections.map((e) {
          if (e!.id == collections.id) {
            return e.copyWith(name: collections.name);
          }
          return e;
        }).toList(),
      ));
    });
  }

  void deleteCollection(int id) {
    _collectionsUsecase.delete(id).then((_) {
      emit(state.copyWith(
        collections:
            state.collections.where((element) => element!.id != id).toList(),
      ));
    });
  }

  void addArticleToCollection(int id, String path) {
    _collectionsUsecase.addArticle(id, path).then((_) {
      getCollection(enableLoad: false);
    });
  }

  void deleteArticleFromCollection(int id, String path) {
    _collectionsUsecase.deleteArticle(id, path).then((_) {
      getCollection(enableLoad: false);
    });
  }
}
