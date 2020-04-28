class PlayersModel {
  String id;
  String name;
  String idTeam;
  String role;
  String image;

  PlayersModel({this.id, this.name, this.idTeam, this.role, this.image});

  PlayersModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    idTeam = json['IdTeam'];
    role = json['Role'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['IdTeam'] = this.idTeam;
    data['Role'] = this.role;
    data['Image'] = this.image;
    return data;
  }
}
