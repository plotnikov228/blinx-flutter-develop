import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/domain/repostories/collections_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CollectionsUsecase {
  CollectionsUsecase(this._collectionsRepository);
  final CollectionsRepository _collectionsRepository;

  Future<List<Collection>> call() => _collectionsRepository.getCollections();

  Future<Collection> create(String collectionName) =>
      _collectionsRepository.createCollection(Collection(name: collectionName));

  Future<void> delete(int idCollection) =>
      _collectionsRepository.deleteCollection(idCollection);

  Future<void> addArticle(int idCollection, String articlePath) =>
      _collectionsRepository.addArticleToCollection(idCollection, articlePath);

  Future<void> deleteArticle(int idCollection, String articlePath) =>
      _collectionsRepository.deleteArticleFromCollection(
          idCollection, articlePath);

  Future<Collection> renameCollection(int idCollection, String newName) =>
      _collectionsRepository.renameCollection(
          idCollection, Collection(name: newName));
}
