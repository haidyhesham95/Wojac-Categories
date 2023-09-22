import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wojac_app/const/Colors.dart';
import 'package:wojac_app/const/Styels.dart';

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
    cursorColor: kgreen,
      style: Styles.textStyle316bold,
      onChanged: (value){},
      onSubmitted:(value){
        log(searchTextController.text as num);
      },
      controller:searchTextController,
      keyboardType:TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Search for wojaks ...',
        hintStyle: TextStyle(
            color: kWhite
        ),
        prefixIcon:Icon(
            Icons.search_sharp,
            color: Colors.grey.shade400),
        suffixIcon: GestureDetector(
          onTap: (){
            searchTextController.clear();
            FocusScope.of(context).unfocus();
          },
          child: Icon(
              Icons.close,
              color: kgreen
          ),
        ),

        //fillColor: Color(0xffBEBEBE),
        //focusColor: kWhite,
        focusedBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(15),
          borderSide: BorderSide(
            color: kWhite,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: kWhite,
              width:1.5,
            )
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}