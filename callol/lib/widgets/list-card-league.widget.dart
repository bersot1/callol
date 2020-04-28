import 'package:callol/models/league.model.dart';
import 'package:callol/widgets/card-league.widget.dart';
import 'package:flutter/material.dart';

class ListCardLeagueWidget extends StatelessWidget {
  final List<LeagueModel> leagueList;

  ListCardLeagueWidget({@required this.leagueList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: leagueList.length,
        itemBuilder: (context, i) {
          LeagueModel item = leagueList[i];

          return Padding(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).accentColor,
                ),
                child: CardLeagueWidget(league: item)),
          );
        },
      ),
    );
  }
}
