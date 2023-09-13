import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            width: 0.7,
            color: kWhite,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(

          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 25,
            ),

            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 2.w
              ),
              child: Text('Ahmed Zone',style: Styles.textStyle15,),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: size.height*0.045,
                width: size.width*0.065,
                child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: kgreen,
                    ),
                    child:  const Text(
                      'Follow',style:Styles.textStyle18,

                    )
                ),

              ),
            ),
          ],
        ),
      ),


    );
  }
}
