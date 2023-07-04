import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subcategory.freezed.dart';

part 'subcategory.g.dart';

// TODO: remove once we implement Backend.
final _random = Random.secure();

@freezed
class SubCategory with _$SubCategory {
  const SubCategory._();

  const factory SubCategory({
    required String id,
    required String name,
  }) = _SubCategory;

  factory SubCategory.random([int? index]) {
    final titleNumber = _random.nextInt(30).toString();
    final category = _random.nextInt(10).toString();
    return SubCategory(
      id: (titleNumber + category),
      name: 'Sub-category #${index ?? titleNumber}',
    );
  }

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
