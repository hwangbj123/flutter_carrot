import 'package:class_carrot_market_v1/theme.dart';
import 'package:flutter/material.dart';

import '../../../models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  // UI 에 데이터까지 포함하여 코드 설계
  final List<IconMenu> iconMenuList;

  const CardIconMenu({required this.iconMenuList, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 7),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        children: List.generate(iconMenuList.length, (i) => _buildRowIconItem(iconMenuList[i].title, iconMenuList[i].iconData))
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData){
    return Container(
      height: 50,
      child: Row(
        children: [
          Icon(iconData, size: 17,),
          const SizedBox(width: 20,),
          Text(title, style: textTheme().titleMedium,)
        ],
      ),
    );
  }
}
