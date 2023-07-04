import 'package:blinx/domain/entities/collection.dart';

abstract class CollectionsRepository {
  Future<List<Collection>> getCollections();

  Future<Collection> createCollection(Collection collection);

  Future<void> deleteCollection(int idCollection);

  Future<void> addArticleToCollection(int idCollection, String articlePath);

  Future<void> deleteArticleFromCollection(
      int idCollection, String articlePath);

  Future<Collection> renameCollection(
      int idCollection, Collection newCollection);
}
