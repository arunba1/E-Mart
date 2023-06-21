import 'package:e_mart/colors.dart';
import 'package:e_mart/consts.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        
        
        actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
      ]),
      body: Container(),
    );
  }
}
