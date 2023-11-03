
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wojac_app/Features/FavoriteScreen/widgets/animations/animationClassController.dart';




class CustomAnimatedWidget extends StatefulWidget {
  Duration? duration;
  Duration? repeatDuration;
  int count;
  final AnimationType animationType;
  final Widget child;
  bool? autoPlay;
  List<Effect<dynamic>>? effects;
  CustomAnimatedWidget({super.key,this.autoPlay, this.effects, this.repeatDuration, this.duration, required this.count, required this.animationType, required this.child,});

  @override
  State<CustomAnimatedWidget> createState() => _CustomAnimatedWidgetState();
}

class _CustomAnimatedWidgetState extends State<CustomAnimatedWidget> with SingleTickerProviderStateMixin{

  late AnimationController anim;

  repeat() async{

    if(widget.animationType == AnimationType.infinityLoop){
      while(true){
        setState(() {
          anim.forward(
              from: 0
          );
        });

        await Future.delayed(widget.repeatDuration ?? Duration(milliseconds: 500) );
      }

    }else if(widget.animationType == AnimationType.specificCount){
      for(int i = widget.count; i> 0; i--){
        setState(() {
          anim.forward(
              from: 0
          );
        });

        await Future.delayed(widget.repeatDuration ?? Duration(milliseconds: 500) );
      }
    }


  }

  @override
  void initState() {
    anim = AnimationController(
      vsync: this,
      duration: widget.duration ?? Duration(milliseconds: 500),
    );

    //AnimClassController.specificCount(anim, anim.duration, 3);
    repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: widget.effects ?? [
        ScaleEffect(begin: Offset(0.5, 0.5), end: Offset(1, 1),),
        FadeEffect(begin: 0.5, end: 1),
      ],
      child: InkWell(
          child: widget.child,
        overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
        onTap: (){
            anim.forward(
              from: 0
            );
        },
      ),
      controller: anim,
      autoPlay: widget.autoPlay ?? true,
    );
  }
}
