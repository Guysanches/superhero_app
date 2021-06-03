import 'package:flutter/material.dart';
import 'package:superhero_app/pages/hero_detail/widgets/Utils/sub_Item.dart';

class ListItems extends StatelessWidget {
  final List item;

  const ListItems({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cList = [];

    item.forEach((element) => cList.add(SubItemDetail(title: element)));

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: cList);
  }
}
