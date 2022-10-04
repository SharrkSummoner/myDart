class User {
  String name = "User";
  String phone = "";
  DateTime birthday = DateTime.now();
  bool online = false;
  DateTime lastSignIn = DateTime.now();

  void signIn() {
    online = true;
    lastSignIn = DateTime.now();
  }

  void signUp() {
    print("User $name sign up");
  }
}

void createUser(
    {String name = "User", String phone = "", required timeOfBirthday}) {
  User newUser = User();

  newUser.name = name;
  newUser.phone = phone;
  newUser.signUp();

  User newUser2 = User();
  newUser2.name = "adad";
  newUser2.phone = "asd";
  newUser2.signUp();
}
