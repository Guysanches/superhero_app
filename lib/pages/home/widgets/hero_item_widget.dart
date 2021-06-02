import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:superhero_app/core/core.dart';
import 'package:superhero_app/shared/models/superhero_model.dart';

class ItemHeroWidget extends StatelessWidget {
  const ItemHeroWidget({
    Key? key,
    required this.hero,
  }) : super(key: key);

  final SuperHero hero;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(hero.name);
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: CachedNetworkImage(
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.fill),
                      ),
                    ),
                    progressIndicatorBuilder: (context, url, progress) =>
                        CircularProgressIndicator(),
                    imageUrl: hero.images.md,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name'),
                      Text(hero.name),
                      Text('Gender'),
                      Expanded(
                        child: Text(hero.appearance.gender),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cSecundaryGradientColor.withOpacity(0.10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 15,
                  color: AppColors.cShadowColor)
            ],
          ),
        ),
      ),
    );
  }
}
