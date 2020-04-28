class UserModel {
  String id;
  String firstName;
  String lastName;
  String email;
  bool proPlayer;
  String image;

  UserModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.proPlayer,
      this.image});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    email = json['Email'];
    proPlayer = json['ProPlayer'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Email'] = this.email;
    data['ProPlayer'] = this.proPlayer;
    data['Image'] = this.image;
    return data;
  }
}
