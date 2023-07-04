import 'dart:math';

import 'package:blinx/presentation/resources/resources.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storyteller_moments.freezed.dart';
part 'storyteller_moments.g.dart';

// TODO: remove once we implement Backend.
final _random = Random.secure();

@freezed
class StorytellerMoments with _$StorytellerMoments {
  const StorytellerMoments._();

  const factory StorytellerMoments({
    required String storyTellerId,
    required List<Moment> moments,
    required String storyTellerName,
    @Default('') String storyTellerAvatarUrl,
  }) = _StorytellerMoments;

  factory StorytellerMoments.random() {
    final r = min(4, _random.nextInt(50));
    final r3 = min(_random.nextInt(900), 300);
    final r2 = max(_random.nextInt(24), 8);
    final randomUrl = 'https://i.pravatar.cc/$r2';
    return StorytellerMoments(
        storyTellerName: 'Author $r2',
        storyTellerAvatarUrl: randomUrl,
        storyTellerId: (r + r2 + r3).toString(),
        moments: List.generate(r, (index) => Moment.simple(index + r + r3)));
  }

  List<Moment> sortedItems() => List.of(moments)
    ..sort((i, i2) {
      if (i.seenByCurrentUser) {
        return 1;
      } else if (i2.seenByCurrentUser) {
        return 1;
      }
      return -1;
    });

  String get id => storyTellerId;
  bool get seenByCurrentUser => moments.any((e) => e.seenByCurrentUser);

  factory StorytellerMoments.fromJson(Map<String, dynamic> json) =>
      _$StorytellerMomentsFromJson(json);
}

enum MomentItemType { image, video }

extension Ext on MomentItemType {
  bool get isVideo => this == MomentItemType.video;
}

@freezed
class Moment with _$Moment {
  const Moment._();

  const factory Moment({
    required String id,
    required String path,
    required String imageUrl,
    required String videoId,
    required int? videoLength,
    required MomentItemType type,
    required bool seenByCurrentUser,
    required bool likedByCurrentUser,
    required DateTime publishDate,
  }) = _Moment;

  factory Moment.simple(int index) {
    final r = _random.nextInt(2);
    final url = r.isEven ? TempImages.getRandomImage() : '631233422211112';
    return Moment(
      path: '',
      videoId: '',
      imageUrl: url,
      videoLength: 5,
      id: index.toString(),
      seenByCurrentUser: false,
      publishDate: DateTime.now(),
      likedByCurrentUser: _random.nextBool(),
      type: r.isEven ? MomentItemType.image : MomentItemType.video,
    );
  }

  factory Moment.fromJson(Map<String, dynamic> json) => _$MomentFromJson(json);
}
