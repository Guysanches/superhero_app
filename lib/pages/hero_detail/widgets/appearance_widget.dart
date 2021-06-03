import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/list_items.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/sub_Item.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/title_item.dart';
import 'package:superhero_app/shared/stores/hero_store.dart';

class AppearanceWidget extends StatelessWidget {
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
              TitleItemDetail(title: 'Appearance'),
              SubItemDetail(
                  title: 'Gender: ' + cData.cHeroDetail!.appearance.gender),
              SubItemDetail(
                  title: 'Race: ' + cData.cHeroDetail!.appearance.race),
              SubItemDetail(
                  title:
                      'Eye Color: ' + cData.cHeroDetail!.appearance.eyeColor),
              SubItemDetail(
                  title:
                      'Hair Color: ' + cData.cHeroDetail!.appearance.hairColor),
              SizedBox(height: 10),
              TitleItemDetail(title: 'Heigth'),
              ListItems(item: cData.cHeroDetail!.appearance.height),
              SizedBox(height: 10),
              TitleItemDetail(title: 'Weight'),
              ListItems(item: cData.cHeroDetail!.appearance.weight),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
