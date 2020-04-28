class GameModel {
  String id;
  String idTeamA;
  String idTeamB;
  String idLeague;
  String dateGame;
  String odds;

  GameModel(
      {this.id,
      this.idTeamA,
      this.idTeamB,
      this.idLeague,
      this.dateGame,
      this.odds});

  GameModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    idTeamA = json['IdTeamA'];
    idTeamB = json['IdTeamB'];
    idLeague = json['IdLeague'];
    dateGame = json['DateGame'];
    odds = json['Odds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['IdTeamA'] = this.idTeamA;
    data['IdTeamB'] = this.idTeamB;
    data['IdLeague'] = this.idLeague;
    data['DateGame'] = this.dateGame;
    data['Odds'] = this.odds;
    return data;
  }
}
