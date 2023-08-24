import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wojac_app/const/Colors.dart';

class TextSearch extends StatefulWidget {
  const TextSearch({super.key});

  @override
  State<TextSearch> createState() => _TextSearchState();
}

class _TextSearchState extends State<TextSearch> {

  late TextEditingController searchTextController;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(

      onChanged: (value){},
      onSubmitted:(value){
        log(searchTextController.text as num);
      },
      controller:searchTextController,
      keyboardType:TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon:Icon(Icons.search,color: kGround,),
        suffixIcon: GestureDetector(
          onTap: (){
            searchTextController.clear();
            FocusScope.of(context).unfocus();
          },
          child: Icon(Icons.close,color: kGround,),
        ),
        fillColor: kColor,
        focusedBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(18),
          borderSide: BorderSide(
            color: kColor,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: kColor,
              width:1.5,
            )
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(20),
      ),
    );
  }
}