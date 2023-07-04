extension NumExtension on double {
  int get roundUp => isNegative ? floor() : ceil();
}
