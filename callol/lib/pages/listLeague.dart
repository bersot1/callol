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
  
  var _searchview = new TextEditingController();
  bool _firstSearch = true;
  String _query = "";

  List<LeagueModel> _filterList;
  List<LeagueModel> leagueList;

  @override
  void initState() {
    super.initState();
    leagueList = new List<LeagueModel>();
    leagueList = [
      LeagueModel( id: '1', image: 'https://i.picsum.photos/id/355/100/100.jpg', name: 'CBLOL'),
      LeagueModel( id: '2', image: 'https://i.picsum.photos/id/345/100/100.jpg', name: 'LCK'),
      LeagueModel( id: '3', image: 'https://i.picsum.photos/id/354/100/100.jpg', name: 'LPL'),
      LeagueModel( id: '4', image: 'https://i.picsum.photos/id/250/100/100.jpg', name: 'EU'),
      LeagueModel( id: '5', image: 'https://i.picsum.photos/id/655/100/100.jpg', name: 'NA'),
      LeagueModel( id: '6', image: 'https://i.picsum.photos/id/315/100/100.jpg', name: 'Circuitão'),
    ];
  }

  _ListLeaguesState() {
    _searchview.addListener(() {
      if (_searchview.text.isEmpty) {
        setState(() { _firstSearch = true; _query = ""; });
      } else {
        setState(() { _firstSearch = false; _query = _searchview.text; });
      }
    });
  }

  Widget _leaguesSearch() {
    _filterList = new List<LeagueModel>();
    for (int i = 0; i < leagueList.length; i++) {
      var league = leagueList[i].name;
      if (league.toLowerCase().contains(_query.toLowerCase())) {
        _filterList.add(leagueList[i]);
      }
    }
    return LoddsListCards(leagueList: _filterList);
  }
 
  
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
            LoddsSearchBar(context: context, controller: _searchview,),
            _firstSearch 
              ? LoddsListCards(leagueList: leagueList) 
              : _leaguesSearch()
          ],
        ),
      ),
    );
  }

}
