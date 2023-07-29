mixin class ValidationMixin {
  String? validatePassword(value) {
    if (value != null) {
      if (value.length < 4) {
        return 'Password must be atleast 5 characters long';
      }
      return null;
    }
  }

  String? validateEmail(value) {
    if (value != null) {
      if (!value.contains('@')) {
        return 'Please enter a valid email';
      }
      return null;
    }
  }
}
