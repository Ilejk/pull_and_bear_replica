class LoginRequest {
  String email;
  String password;

  LoginRequest({
    required this.email,
    required this.password,
  });
}

class RegisterRequest {
  String userName;
  String email;
  String password;
  String mobileNumber;

  RegisterRequest({
    required this.userName,
    required this.email,
    required this.password,
    required this.mobileNumber,
  });
}
