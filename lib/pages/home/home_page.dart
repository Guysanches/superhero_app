import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/core/core.dart';
import 'package:superhero_app/pages/home/widgets/hero_item_widget.dart';
import 'package:superhero_app/pages/home/widgets/search_field_widget.dart';
import 'package:superhero_app/shared/stores/hero_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HeroStore cData = GetIt.instance<HeroStore>();

  @override
  void initState() {
    if (cData.cState == StateHero.initial) cData.getItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'SuperHeroes',
                              style: AppTextStyles.cHeadingTextStyle,
                            ),
                          ),
                          IconButton(
                              onPressed: () async {
                                cData.getRandomHero().then((value) =>
                                    Navigator.of(context)
                                        .pushNamed('/herodetail'));
                              },
                              icon: Icon(Icons.shuffle,
                                  color: AppColors.cTextWhiteColor))
                        ],
                      ),
                      SearchFieldWidget(
                          onChanged: (value) => cData.searchHero(value)),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.70,
                  width: MediaQuery.of(context).size.width,
                  child: Observer(
                    builder: (BuildContext context) {
                      switch (cData.cState) {
                        case StateHero.empty:
                        case StateHero.loading:
                        case StateHero.initial:
                          return Center(child: CircularProgressIndicator());

                        case StateHero.error:
                          return Center(
                            child: Text(cData.msgError),
                          );
                        case StateHero.loaded:
                        case StateHero.search:
                          return Padding(
                            padding: const EdgeInsets.all(4),
                            child: GridView.builder(
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.all(12),
                              addAutomaticKeepAlives: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 3,
                                crossAxisCount: 1,
                              ),
                              itemCount: cData.cItems.length,
                              itemBuilder: (context, index) {
                                return ItemHeroWidget(
                                    hero: cData.cItems[index]);
                              },
                            ),
                          );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
