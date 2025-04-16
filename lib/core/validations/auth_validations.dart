class AuthValidations {
  AuthValidations._();

  static const String kEmailFormat =
      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';

  static String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return "Full Name is required";
    } else if (value.length < 4) {
      return "Name is Invalid";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    } else if (!RegExp(kEmailFormat).hasMatch(value)) {
      return "Invalid Email Address";
    }
    return null;
  }

  static String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Mobile number is required';
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Invalid Mobile Number';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    } else if (value.length < 6) {
      return "Password must be 6 characters";
    }
    return null;
  }

  static String? validateReTypePassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return "Re-Type Password is required";
    } else if (value.length < 6) {
      return "Re-Type Password must be 6 characters";
    } else if (value != password) {
      return "Password does not match";
    }
    return null;
  }

  static String? validateGender(String? gender) {
    if (gender == null || gender.isEmpty) {
      return "Gender is required";
    }
    return null;
  }

  static String? validateAge(int? age) {
    if (age == null) {
      return "Age is required";
    }
    return null;
  }
}
