import 'package:flutter/Material.dart';
import 'package:wojac_app/const/Colors.dart';

import 'AccountSignup.dart';
import 'BottonForget.dart';
import 'ButtonGoogle.dart';
import 'ButtonSignIn.dart';
import 'DividerOr.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return      
       Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        //color: kWhite,
        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome Back 👋',style: TextStyle(
                          fontSize: 28,
                        ),),
                        SizedBox(height: 20,),
                        Text('Today is a new day,You shape it.\r SignIn to start managing your projects.',style: TextStyle(
                          fontSize: 18,
                        ),),
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,bottom: 5),
                          child: Text('Email'),
                        ),
                        Container(
                          height: 48,
                          width: 388,
                          child: TextFormField(
                            keyboardType:TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Example@email.com',
                              fillColor: kWhite,
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: kgreen,
                                  width: 1.5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: kgreen,
                                    width:1.5,
                                  )
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(20),
                            ),

                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,bottom: 5),
                          child: Text('Password'),
                        ),
                        Container(
                          height: 48,
                          width: 388,
                          child: TextFormField(
                            keyboardType:TextInputType.visiblePassword,
                            obscureText: true,

                            decoration: InputDecoration(
                              hintText: '8 Characters',


                              fillColor: kWhite,
                              focusedBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: kgreen,
                                  width: 1.5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: kgreen,
                                    width:1.5,
                                  )
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(20),
                            ),

                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: ButtonForget(),
                    ),
                    SizedBox(height: 20,),
                    ButtonSignIn(
                      onPressed: (){},
                      data: 'Sign In' ,
                    ),
                    SizedBox(height: 40,),
                    //DividerOr(),
                    ButtonGoogle(),
                    SizedBox(height: 30,),
                    AccountSignUp(),
                  ],
                ),
              ),

              Image.asset('assets/images/signin.png'),

            ],
          ),
        ),
      
    );
  }
}
