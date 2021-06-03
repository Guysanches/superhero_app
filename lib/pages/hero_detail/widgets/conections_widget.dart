import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/sub_Item.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/title_item.dart';
import 'package:superhero_app/shared/stores/hero_store.dart';

class ConectionsWidget extends StatelessWidget {
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
              TitleItemDetail(title: 'Group Affiliation'),
              SubItemDetail(
                  title: cData.cHeroDetail!.connections.groupAffiliation),
              SizedBox(height: 10),
              TitleItemDetail(title: 'Relatives'),
              SubItemDetail(title: cData.cHeroDetail!.connections.relatives),
              SizedBox(height: 10),
              TitleItemDetail(title: 'Work'),
              SubItemDetail(
                  title: 'Occupation: ' + cData.cHeroDetail!.work.occupation),
              SubItemDetail(title: 'Base: ' + cData.cHeroDetail!.work.base),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
