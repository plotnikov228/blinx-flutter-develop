import 'package:blinx/domain/entities/collection.dart';
import 'package:blinx/presentation/common/base_status/base_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_state.freezed.dart';

@freezed
class CollectionState with _$CollectionState {
  const CollectionState._();

  factory CollectionState({
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([null, null, null, null, null]) List<Collection?> collections,
  }) = _CollectionState;
}
