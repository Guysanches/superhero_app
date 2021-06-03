import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/status_bar.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/title_item.dart';
import 'package:superhero_app/shared/stores/hero_store.dart';

class PowerstatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HeroStore cData = GetIt.instance<HeroStore>();

    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleItemDetail(
                  nStats:
                      '${cData.cHeroDetail!.powerstats.intelligence.toString()}/100',
                  title: 'Intelligence'),
              StatusBar(
                  widthFactor:
                      cData.cHeroDetail!.powerstats.intelligence / 100),
              TitleItemDetail(
                  nStats:
                      '${cData.cHeroDetail!.powerstats.strength.toString()}/100',
                  title: 'Strength'),
              StatusBar(
                  widthFactor: cData.cHeroDetail!.powerstats.strength / 100),
              TitleItemDetail(
                  nStats:
                      '${cData.cHeroDetail!.powerstats.speed.toString()}/100',
                  title: 'Speed'),
              StatusBar(widthFactor: cData.cHeroDetail!.powerstats.speed / 100),
              TitleItemDetail(
                  nStats:
                      '${cData.cHeroDetail!.powerstats.durability.toString()}/100',
                  title: 'Durability'),
              StatusBar(
                  widthFactor: cData.cHeroDetail!.powerstats.durability / 100),
              TitleItemDetail(
                  nStats:
                      '${cData.cHeroDetail!.powerstats.power.toString()}/100',
                  title: 'Power'),
              StatusBar(widthFactor: cData.cHeroDetail!.powerstats.power / 100),
              TitleItemDetail(
                  nStats:
                      '${cData.cHeroDetail!.powerstats.combat.toString()}/100',
                  title: 'Combat'),
              StatusBar(
                  widthFactor: cData.cHeroDetail!.powerstats.combat / 100),
            ],
          ),
        ),
      ),
    );
  }
}
