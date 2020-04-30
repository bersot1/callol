import 'package:callol/models/league.model.dart';
import 'package:callol/pages/detailsLeague.dart';
import 'package:callol/theme/styles.dart';
import 'package:callol/widgets/loader.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:flutter/material.dart';

import 'card.dart';

class LoddsListCards extends StatelessWidget {
  final List<LeagueModel> leagueList;

  LoddsListCards({
    @required this.leagueList
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoddsLoader(
        object: leagueList, 
        zeroLength: zeroList, 
        callback: listLeagues
      ),
    );
  }

  listLeagues(){
    return Expanded(
      child: Container(
        child: AnimationLimiter(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            addAutomaticKeepAlives: true,
            itemCount: leagueList.length,
            itemBuilder: (context, index) {
              LeagueModel item = leagueList[index];
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: ScaleAnimation(
                  child: LoddsCard(context: context, league: item),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  zeroList() {
    return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.sentiment_dissatisfied, color: primaryColor, size: 70),
              SizedBox(height: 20),
              Text("Nada por enquanto", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24, 
                  color: primaryColor.withOpacity(0.4), 
                  height: 2 ,
              )),
            ],
          ),
    ));
  }
}
