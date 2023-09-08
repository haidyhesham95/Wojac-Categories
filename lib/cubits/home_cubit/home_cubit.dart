import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wojac_app/cubits/home_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {

  HomeCubit() : super ( HomeInitState() ) ;

  //getting object from bloc
  static HomeCubit getObj(BuildContext context) {
    return BlocProvider.of(context) ;
  }

//  vars

//functions



}