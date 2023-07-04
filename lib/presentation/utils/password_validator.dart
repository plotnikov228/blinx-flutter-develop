abstract class PasswordValidator {
  static bool hasMinimumLength(String password, [int requiredLength = 8]) =>
      password.trim().length >= requiredLength;

  static bool hasLowerCaseLetter(String password) =>
      RegExp(r'^.*[a-z].*$').hasMatch(password);

  static bool hasUpperCaseLetter(String password) =>
      RegExp(r'^.*[A-Z].*$').hasMatch(password);

  static bool hasNumber(String password) =>
      RegExp(r'^.*[0-9].*$').hasMatch(password);

  static bool hasSpecialCharacter(String password) =>
      RegExp(r'^.*[^a-zA-Z0-9].*$').hasMatch(password);

  static bool isValid(String password) =>
      hasMinimumLength(password) &&
      hasSpecialCharacter(password) &&
      hasLowerCaseLetter(password) &&
      hasUpperCaseLetter(password);
}
