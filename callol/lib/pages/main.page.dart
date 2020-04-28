import 'package:callol/models/league.model.dart';
import 'package:callol/widgets/card-league.widget.dart';
import 'package:callol/widgets/list-card-league.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      appBar: AppBar(
        title: Text(
          "CALL LOL",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50,
                    ),
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Pequisar..."),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("Ligsas"),
            ),
            ListCardLeagueWidget(leagueList: leagueList)
          ],
        ),
      ),
    );
  }
}
