class ValidationMixin {
  String validateEmail(String value) {
    // return null if valid
    // otherwise return error message string
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String validatePassword(String value){
    if (value.length < 4) {
        return 'Please enter a valid password';
    }
    return null;
  }
}