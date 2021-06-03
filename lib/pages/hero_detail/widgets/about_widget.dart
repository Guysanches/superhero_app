import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/list_items.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/sub_Item.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/title_item.dart';
import 'package:superhero_app/shared/stores/hero_store.dart';

class AboutWidget extends StatelessWidget {
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
              TitleItemDetail(title: 'Biography'),
              SubItemDetail(
                  title: 'Full Name: ' + cData.cHeroDetail!.biography.fullName),
              SubItemDetail(
                  title:
                      'Alter Egos: ' + cData.cHeroDetail!.biography.alterEgos),
              SubItemDetail(
                  title: 'Place of Birth: ' +
                      cData.cHeroDetail!.biography.placeOfBirth),
              SubItemDetail(
                  title: 'First Appearance: ' +
                      cData.cHeroDetail!.biography.firstAppearance),
              SubItemDetail(
                  title:
                      'Publisher: ' + cData.cHeroDetail!.biography.publisher),
              SubItemDetail(
                  title:
                      'Alignment: ' + cData.cHeroDetail!.biography.alignment),
              SizedBox(height: 10),
              TitleItemDetail(title: 'Aliases'),
              ListItems(item: cData.cHeroDetail!.biography.aliases),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
