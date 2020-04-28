class TeamsModel {
  String id;
  String name;
  String idLeague;
  String image;

  TeamsModel({this.id, this.name, this.idLeague, this.image});

  TeamsModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    idLeague = json['IdLeague'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Name'] = this.name;
    data['IdLeague'] = this.idLeague;
    data['Image'] = this.image;
    return data;
  }
}
