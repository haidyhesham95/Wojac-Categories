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
      style: fontStyle(
         weight: FontWeight.bold,
          color: kGround,
         fontSize: 3.w > 16 ? 3.w : 16
      ),
      onChanged: (value){},
      onSubmitted:(value){
        log(searchTextController.text as num);
      },
      controller:searchTextController,
      keyboardType:TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Search for wojaks ...',
        hintStyle: const TextStyle(
            color: kWhite
        ),
        prefixIcon:const Icon(
            Icons.search_sharp,
            color: kgreen),
        suffixIcon: GestureDetector(
          onTap: (){
            searchTextController.clear();
            FocusScope.of(context).unfocus();
          },
          child: Icon(
              Icons.close,
              color: kgreen.withOpacity(.8)
          ),
        ),

        fillColor: const Color(0xffBEBEBE),
        focusedBorder: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: kgreen,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: kgreen,
              width:1.5,
            )
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(15),
      ),
    );
  }
}