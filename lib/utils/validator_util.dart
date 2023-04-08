class ValidatorUtil {

  static String? requiredValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? numberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a number';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Please enter a valid number';
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!RegExp(r'^\+?[0-9]+$').hasMatch(value) && value.length != 10) {
      return 'Please enter a valid phone number';
    }
    return null;
  }
}