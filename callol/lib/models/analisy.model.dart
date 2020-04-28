class AnalysisModel {
  String id;
  String idGame;
  String idUser;
  String call;

  AnalysisModel({this.id, this.idGame, this.idUser, this.call});

  AnalysisModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idGame = json['IdGame'];
    idUser = json['IdUser'];
    call = json['Call'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['IdGame'] = this.idGame;
    data['IdUser'] = this.idUser;
    data['Call'] = this.call;
    return data;
  }
}
