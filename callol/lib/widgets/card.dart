import 'package:callol/models/league.model.dart';
import 'package:callol/pages/detailsLeague.dart';
import 'package:callol/theme/styles.dart';
import 'package:flutter/material.dart';

class LoddsCard extends StatelessWidget {
  
  final LeagueModel league;
  final context;
  
  LoddsCard({
    @required this.league,
    @required this.context
  });

  _goDetailsLeague(context){
    return Navigator.push(context, 
      MaterialPageRoute(builder: (BuildContext context) => DetailsLeaguePage(), 
        fullscreenDialog: true
      ),
    );
  }

  _textItens(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 100),
            child: Text(league.name,
              overflow: TextOverflow.ellipsis,
              style:  TextStyle(fontSize: 20, color: primaryColor,  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 100),
            child: Text("Bixo só procura e blah blah blah", 
              overflow: TextOverflow.ellipsis, maxLines: 2,
              style: TextStyle(fontSize: 12, color: primaryColor.withOpacity(0.4), height: 1.3 )
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => _goDetailsLeague(context),
      child: Container(
        width: double.infinity,
        height: 140,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left:10, right:10, bottom:10),
                child: Container( 
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.black12,  offset: Offset(0,6), blurRadius: 6)
                    ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left:22, top:16),
                    child: _textItens()
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20, top: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  league.image, fit: BoxFit.cover,
                  width: 100, height: 100,
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
