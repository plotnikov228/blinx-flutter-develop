import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'component.freezed.dart';
part 'component.g.dart';

@freezed
class Component with _$Component {
  const Component._();

  const factory Component({
    required String type,
    required Content data,
  }) = _Component;

  factory Component.fromJson(Map<String, dynamic> json) =>
      _$ComponentFromJson(json);
}

@freezed
class Content with _$Content {
  const Content._();

  const factory Content({
    @Default('') String content,
    @Default([]) List<_Media> media,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
class _Media with _$_Media {
  const _Media._();

  const factory _Media({
    @Default('') String? url,
    @Default('') String? videoId,
    @Default('') String? caption,
    @Default('') String? source,
    @Default(1920) double? width,
    @Default(1080) double? height,
  }) = __Media;

  factory _Media.fromJson(Map<String, dynamic> json) => _$_MediaFromJson(json);
}

List<Component> parseComponent(String? lc) {
  if (lc == null||lc=='') {
    return [];
  } else {
    var listC = <Component>[];
    List t = json.decode(lc);

    for (var element in t) {
      switch (element['type']) {
        case 'quote':
          {
            listC.add(Component(
                type: 'quote',
                data: Content(
                  content: element['data']['content'],
                )));
          }
          break;
        case 'textGradient':
          {
            listC.add(Component(
                type: 'textGradient',
                data: Content(
                  content: element['data']['content'],
                )));
          }
          break;
        case 'richText':
          {
            listC.add(Component(
                type: 'richText',
                data: Content(
                  content: element['data']['content'],
                )));
          }
          break;
        case 'banner':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
                caption: element['caption'],
                source: element['source'],
              ));
            }

            listC.add(Component(
                type: 'banner',
                data: Content(
                  media: LL,
                )));
          }
          break;
        case 'html':
          {
            listC.add(Component(
                type: 'html',
                data: Content(
                  content: element['data']['content'],
                )));
          }
          break;
        case 'callout':
          {
            listC.add(Component(
                type: 'callout',
                data: Content(
                  content: element['data']['content'],
                )));
          }
          break;
        case 'twitter':
          {
            listC.add(Component(
                type: 'twitter',
                data: Content(
                  content: element['data']['content'],
                )));
          }
          break;
        case 'video':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
                width: element['width'] != null
                    ? double.parse(element['width'].toString())
                    : null,
                height: element['height'] != null
                    ? double.parse(element['height'].toString())
                    : null,
              ));
            }

            listC.add(Component(
                type: 'video',
                data: Content(
                  media: LL,
                )));
          }
          break;
        case 'videoVertical':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
                width: element['width'] != null
                    ? double.parse(element['width'].toString())
                    : null,
                height: element['height'] != null
                    ? double.parse(element['height'].toString())
                    : null,
              ));
            }

            listC.add(Component(
                type: 'videoVertical',
                data: Content(
                  media: LL,
                )));
          }
          break;
        case 'gallery':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
                caption: element['caption'],
                source: element['source'],
              ));
            }

            listC.add(Component(
                type: 'gallery',
                data: Content(
                  media: LL,
                )));
          }
          break;
        case 'gif':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
              ));
            }

            listC.add(Component(
                type: 'gif',
                data: Content(
                  media: LL,
                )));
          }
          break;
        case 'image':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
                caption: element['caption'],
                source: element['source'],
              ));
            }

            listC.add(Component(
                type: 'image',
                data: Content(
                  media: LL,
                )));
          }
          break;
        case 'carousel':
          {
            var LL = <_Media>[];

            for (var element in (element['data']['media'] as List)) {
              LL.add(_Media(
                videoId: element['videoId'],
                url: element['url'],
                caption: element['caption'],
                source: element['source'],
              ));
            }

            listC.add(Component(
                type: 'carousel',
                data: Content(
                  media: LL,
                )));
          }
          break;
      }
    }
    return listC;
  }
}
