import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/screens/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Text('좌동'),
          const SizedBox(width: 4.0),
          const Icon(CupertinoIcons.chevron_down),
        ],),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
      ),
      body: ListView.separated( 
        // items 사이에 선 넣기
        // separated, bulider 등 : 화면에 보이는 부분만 렌더링 후 스크롤 시 추가 렌더링
          itemBuilder: (context, index) => ProductItem(product: productList[index]),
          separatorBuilder: (context, index) => const Divider(
            height: 0,
            indent: 16, // 전 간격
            endIndent: 16, // 후 간격
            color: Colors.grey,
          ), // Divider : 구분선 위젯 
          itemCount: productList.length
      ),
    );
  }
}
