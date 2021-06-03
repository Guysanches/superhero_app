import 'package:flutter/material.dart';

import 'package:superhero_app/core/core.dart';

class TitleItemDetail extends StatelessWidget {
  final String title;
  final String nStats;
  final bool stats;

  const TitleItemDetail({
    Key? key,
    required this.title,
    this.nStats = '',
    this.stats = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return stats
        ? Text(
            title,
            style: AppTextStyles.cTitleItemDetail,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.cTitleItemDetail,
              ),
              Text(
                nStats,
                style: AppTextStyles.cTitleItemDetail,
              )
            ],
          );
  }
}
