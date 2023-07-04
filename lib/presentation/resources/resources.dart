import 'dart:math';

export 'package:blinx/presentation/resources/app_colors.dart';
export 'package:blinx/presentation/resources/app_text_styles.dart';
export 'package:blinx/presentation/resources/app_theme.dart';

final _random = Random();

// TODO: remove once data comes from BE.
abstract class TempImages {
  static String getRandomImage() => images[_random.nextInt(images.length)];

  static const List<String> images = [
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fpawnshop-nike-sb-dunk-high-release-info-fj0445-001-0000.jpg?q=90&w=2800&cbr=1&fit=max',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2FMeta-Quest-Pro-Feature.jpg?w=950&cbr=1&q=90&fit=max',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Ffifa-world-cup-2022-best-kits-uniforms-0.jpg?w=950&cbr=1&q=90&fit=max',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fmissoni-fw22-cardigan-collection-campaign-video-release-info-00.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fmatt-reeves-batman-universe-developing-villain-spin-off-films-rumor-info-000.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Feminem-the-eminem-show-20th-anniversary-merch-collection-release-info-000.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fhorse-kicks-marcus-floyd-sneakers-info-000.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fian-johnson-confirms-daniel-craig-knives-out-character-benoit-blanc-gay-000.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2F2-chainz-hosts-amazon-concert-series-info-000.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fstephane-cardinale-corbis-corbis-via-getty-images-00.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Fnike-dunk-low-kentucky-syracuse-restock-date-0.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2Flafw-designers-recap-ss23-0.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
    'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2022%2F10%2FJay-Z-Is-Reportedly-Suing-Bacardi-Over-DUSSE-Cognac-Partnership-0.jpg?fit=max&cbr=1&q=90&w=1125&h=750',
  ];
}
