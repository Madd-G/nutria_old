class User {
  late String username;
  late String imagePath;
  late String email;
  late String address;
  late String language;
  late String gender;

  User({
    this.username = '',
    this.imagePath = '',
    this.email = '',
    this.address = '',
    this.language = '',
    this.gender = '',
  });
}

final List<User> userData = [
  User(
      username: 'Alamsyah',
      imagePath: 'assets/images/profile.png',
      email: 'alamsyah@gmail.com',
      address: 'kebumen',
      language: 'Indonesia',
      gender: 'Male')
];
