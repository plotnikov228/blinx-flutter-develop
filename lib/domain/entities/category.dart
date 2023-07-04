import 'package:blinx/injection/injector.dart';
import 'package:blinx/presentation/app_flavor.dart';
import 'package:blinx/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'media.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const Category._();

  const factory Category({
    @Default('') String id,
    @Default('') String path,
    @Default('ocean') String colors,
    @Default('') String displayName,
    @Default('') String name,
    CoverImage? coverImage,
    @Default(false) bool liked,
  }) = _Category;

  String get coverImageUrl => coverImage==null?'':injector.get<AppFlavor>().baseImageUrl+coverImage!.original;

  factory Category.random(int index, [String? name]) {
    return Category(
      id: index.toString(),
      path: index.toString(),
      displayName: name ?? 'Category #$index',
      name: name ?? 'Category #$index',
    );
  }

  factory Category.defaults() {
    return const Category(
      id: '0',
      path: '',
      displayName: 'default',
      name: 'default',
    );
  }

  factory Category.all({String label = 'All'}) {
    return Category(
      id: '0',
      path: '',
      displayName: label,
      name: '',
    );
  }

  Gradient get gradientFromColorString => AppGradients.getFromColorString(colors);

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
