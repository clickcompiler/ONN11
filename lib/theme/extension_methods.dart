extension ValidatorPattern on String {
  int numberOfChars(RegExp pattern) {
    return pattern.allMatches(this).length;
  }

  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }

  bool isValidPassword() {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this);
  }

  bool isValidPan() {
    return RegExp(r'(^[A-Z]{5}[0-9]{4}[A-Z])').hasMatch(this);
  }

  bool isValidGst() {
    return RegExp(
            r'(^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[0-9]{1}[A-Z]{1}Z[0-9]{1}$)')
        .hasMatch(this);
  }

  bool isValidAadhar() {
    return RegExp(r'(^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$)').hasMatch(this);
  }
}
