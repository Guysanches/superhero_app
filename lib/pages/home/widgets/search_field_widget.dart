import 'package:flutter/material.dart';
import 'package:superhero_app/core/core.dart';

class SearchFieldWidget extends StatelessWidget {
  final Function(String) onChanged;

  const SearchFieldWidget({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        onChanged: (value) => onChanged(value),
        cursorColor: Colors.white,
        style: AppTextStyles.cTextFieldTextStyle,
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: AppTextStyles.cTextFieldTextStyle,
            labelStyle: AppTextStyles.cTextFieldTextStyle,
            suffixIcon: Icon(Icons.search, color: Colors.white),
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            focusedBorder: AppConsts.cInputBorder,
            enabledBorder: AppConsts.cInputBorder,
            border: AppConsts.cInputBorder),
      ),
    );
  }
}
