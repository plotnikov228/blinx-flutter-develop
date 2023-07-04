import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_comment.freezed.dart';
part 'report_comment.g.dart';

@freezed
abstract class ReportComment with _$ReportComment {
  const factory ReportComment({
    required String reason,
  }) = _ReportComment;

  factory ReportComment.fromJson(Map<String, dynamic> json) =>
      _$ReportCommentFromJson(json);
}
