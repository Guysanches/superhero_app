import 'package:flutter/material.dart';
import 'package:superhero_app/core/core.dart';

class SubItemDetail extends StatelessWidget {
  final String title;
  const SubItemDetail({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppTextStyles.cSubItemDetail);
  }
}
