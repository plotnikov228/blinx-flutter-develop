import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/domain/repostories/collections_repository.dart';
import 'package:injectable/injectable.dart';

import 'collection_remote_datasource.dart';

@Injectable(as: CollectionsRepository)
class BaseCollectionRepository implements CollectionsRepository {
  BaseCollectionRepository(this.remoteDatasource);

  final CollectionRemoteDatasource remoteDatasource;

  @override
  Future<List<Collection>> getCollections() {
    // TODO: implement offline-first strategy
    return remoteDatasource.getCollections();
  }

  @override
  Future<Collection> createCollection(Collection collection) {
    // TODO: implement offline-first strategy
    return remoteDatasource.createCollection(collection);
  }

  @override
  Future<void> deleteCollection(int id) {
    // TODO: implement offline-first strategy
    return remoteDatasource.deleteCollection(id);
  }

  @override
  Future<void> addArticleToCollection(int idCollection, String articlePath) {
    // TODO: implement getCollectionArticles
    return remoteDatasource.addArticleToCollection(idCollection, articlePath);
  }

  @override
  Future<void> deleteArticleFromCollection(
      int idCollection, String articlePath) {
    // TODO: implement getCollectionArticles
    return remoteDatasource.deleteArticleFromCollection(
        idCollection, articlePath);
  }

  @override
  Future<Collection> renameCollection(int idCollection, Collection collection) {
    // TODO: implement getCollectionArticles
    return remoteDatasource.renameCollection(idCollection, collection);
  }
}
