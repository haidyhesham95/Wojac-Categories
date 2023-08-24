import 'package:flutter/cupertino.dart';

class CenterdView extends StatelessWidget {
  const CenterdView({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 70,vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 1200),
      child: child,),

    );
  }
}
