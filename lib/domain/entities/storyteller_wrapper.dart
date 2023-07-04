import 'package:blinx/domain/entities/storyteller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storyteller_wrapper.freezed.dart';

part 'storyteller_wrapper.g.dart';

@Freezed(addImplicitFinal: false)
class StorytellerWrapper with _$StorytellerWrapper {
  const StorytellerWrapper._();

  factory StorytellerWrapper({
    required Storyteller storyteller,
    required int articlesCount,
  }) = _SStorytellerWrapper;

  factory StorytellerWrapper.fromJson(Map<String, dynamic> json) =>
      _$StorytellerWrapperFromJson(json);
}
