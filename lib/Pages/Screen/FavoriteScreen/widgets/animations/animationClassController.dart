

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

enum AnimationType {
  specificCount, infinityLoop
}

class AnimClassController{

  static specificCount(AnimationController anim, Duration? duration, int count){
   anim.loop(
     period: duration,
     count: count
   );
  }

   loop(AnimationController anim, Duration? duration,){

    anim.loop(
      period: duration,
    );

  }

  static stop(AnimationController anim){

    anim.stop();

  }

}