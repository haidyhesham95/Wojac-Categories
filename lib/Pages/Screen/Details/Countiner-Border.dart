import 'package:flutter/Material.dart';

import '../../../const/Colors.dart';
import '../../../const/Styels.dart';

class BorderCount extends StatelessWidget {
  const BorderCount({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      height: size.height*0.10,
      width:size.width*0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color: kGround,
          border: Border.all(
            width: 0.5,
            color: kgreen,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(

          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 25,
            ),

            Padding(
              padding: const EdgeInsets.only(top:21 ,left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ahmed Zone',style: Styles.textStyle15,),
                  SizedBox(height: 5,),
                  Text('View all 3.125 images',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            SizedBox(width: 210),

            Container(
              height: size.height*0.045,
              width: size.width*0.065,
              child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: kgreen,
                  ),
                  child:  Text(
                    'Follow',style:Styles.textStyle18,

                  )
              ),

            ),
          ],
        ),
      ),


    );
  }
}
