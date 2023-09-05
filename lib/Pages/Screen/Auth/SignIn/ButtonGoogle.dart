import 'package:flutter/Material.dart';
import 'package:wojac_app/const/Colors.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){},
      color: kWhite,
      child:  Container(
        height: 48,
        width: 300,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png',height: 25,width: 20,),
              SizedBox(width: 5,),
              Text(
                'Sign In With Google',style: TextStyle(fontSize: 18),

              ),
            ],
          ),
        ),
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
