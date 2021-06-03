import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/core/core.dart';
import 'package:superhero_app/shared/stores/hero_store.dart';
import 'widgets/about_widget.dart';
import 'widgets/appearance_widget.dart';
import 'widgets/conections_widget.dart';
import 'widgets/powerstats_widget.dart';

class HeroDetail extends StatefulWidget {
  @override
  _HeroDetailState createState() => _HeroDetailState();
}

class _HeroDetailState extends State<HeroDetail>
    with SingleTickerProviderStateMixin {
  TabController? ctabController;
  // PageController? cPageController;
  int cTabIndex = 0;
  HeroStore cData = GetIt.instance<HeroStore>();

  @override
  void initState() {
    super.initState();
    ctabController = new TabController(length: 4, vsync: this);
    // cPageController = new PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(gradient: AppGradients.linear),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(135),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(60)),
                                child: CachedNetworkImage(
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                  progressIndicatorBuilder:
                                      (context, url, progress) =>
                                          CircularProgressIndicator(),
                                  imageUrl: cData.cHeroDetail!.images.md,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.80),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(cData.cHeroDetail!.name),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.80),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(cData.cHeroDetail!.slug),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TabBar(
                          onTap: (value) {
                            ctabController?.animateTo(cTabIndex = value,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          isScrollable: true,
                          controller: ctabController,
                          tabs: [
                            Text('About'),
                            Text('Appearance'),
                            Text('Connections'),
                            Text('Powerstats'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: TabBarView(
          controller: ctabController,
          children: [
            AboutWidget(),
            AppearanceWidget(),
            ConectionsWidget(),
            PowerstatsWidget()
          ],
        ));
  }
}
