import 'package:flutter/material.dart';
import 'package:wojac_app/utils/widgets/wojak_item.dart';

class NewList extends StatelessWidget {
  const NewList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 1.7,
          mainAxisSpacing: 30,
        ),
        itemBuilder: (context, index) {
          return const WojakItem();
        }

        //Padding(
        //             padding: const EdgeInsets.only(left: 20,right: 20,),
        //             child: Container(
        //
        //               decoration: BoxDecoration(
        //                 color: kWhite,
        //                 borderRadius: BorderRadius.circular(15),
        //               ),
        //               child: Column(
        //                 children: [
        //                   Container(
        //                     child: Stack(
        //                       children: [
        //                         Container(
        //                             height: size.height*0.20,
        //                             width: size.width*0.25,
        //                             decoration: BoxDecoration(
        //                                 color: AppColors.ground,
        //                                 borderRadius: BorderRadius.only(
        //                                   topLeft: Radius.circular(15),
        //                                   topRight: Radius.circular(15),
        //                                 )),
        //                             child:AspectRatio(
        //                               aspectRatio: 8,
        //                               child: Image.asset(
        //                                 'assets/images/img (1).png',
        //
        //                               ),
        //                             )),
        //
        //                         Positioned(
        //                           top: 6,
        //                           right: 9,
        //                           child: HeartWidget(),
        //                         ),
        //
        //                       ],),
        //                   ),
        //                   SizedBox(height: 14,),
        //
        //                   Row(
        //                     crossAxisAlignment: CrossAxisAlignment.center,
        //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                     children: [
        //                       Row(
        //                         children: [
        //                           CircleAvatar(
        //                             bacAppColors.groundImage: AssetImage('assets/images/profile.png'),
        //                             radius: 13,
        //                           ),
        //                           SizedBox(width: 8,),
        //                           Text('Wojak12'),
        //                         ],
        //                       ),
        //                       Container(
        //                         height:18,
        //                         width: 80,
        //                         decoration: BoxDecoration(
        //                             color: AppColors.ground,
        //                             borderRadius: BorderRadius.circular(10)
        //                         ),
        //                         child: TextButton(
        //                             onPressed: () { },
        //                             child: Text(
        //                               'Follow',
        //                               style: Styles.textStyle10,
        //
        //                             )),
        //                       ),
        //
        //                     ],
        //                   ),
        //                 ],
        //
        //
        //               ),
        //             ),
        //           )
        );
  }
}
