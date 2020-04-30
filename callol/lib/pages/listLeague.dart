import 'package:callol/models/league.model.dart';
import 'package:callol/theme/styles.dart';
import 'package:callol/widgets/listCard.dart';
import 'package:callol/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListLeaguesPage extends StatefulWidget {
  @override
  _ListLeaguesState createState() => _ListLeaguesState();
}

class _ListLeaguesState extends State<ListLeaguesPage> {

  final List<LeagueModel> leagueList = [
    LeagueModel(
        id: '1',
        image: 'https://i.picsum.photos/id/355/100/100.jpg',
        name: 'CBLOL'),
    LeagueModel(
        id: '2',
        image: 'https://i.picsum.photos/id/345/100/100.jpg',
        name: 'LCK'),
    LeagueModel(
        id: '3',
        image: 'https://i.picsum.photos/id/354/100/100.jpg',
        name: 'LPL'),
    LeagueModel(
        id: '4',
        image: 'https://i.picsum.photos/id/250/100/100.jpg',
        name: 'EU'),
    LeagueModel(
        id: '5',
        image: 'https://i.picsum.photos/id/655/100/100.jpg',
        name: 'NA'),
    LeagueModel(
        id: '6',
        image: 'https://i.picsum.photos/id/315/100/100.jpg',
        name: 'Circuitão'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Image.asset("assets/images/profile-picture.png", width: 40,)],
            ),
            SizedBox(height: 10),
            Text("Bem vindo guri", style: TextStyle(
              fontSize: 28, 
              color: primaryColor, 
              fontWeight: FontWeight.bold
            )),
            Text("Bixo só procura", style: TextStyle(
              fontSize: 24, 
              color: primaryColor.withOpacity(0.4), 
              height: 1.5 
            )),
            LoddsSearchBar(context: context, text: '', itensForSearch: leagueList),
            LoddsListCards(leagueList: leagueList)
          ],
        ),
      ),
    );
  }

}
