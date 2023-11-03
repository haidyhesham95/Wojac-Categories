import 'package:flutter/Material.dart';


class AccountImage extends StatelessWidget {
  const AccountImage({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.colorAccount,
  });
  final double height;
  final double width;
  final String image;
  final Color colorAccount;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * height,
      width: size.width * width,
      decoration: BoxDecoration(
        color: colorAccount,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(image),
    );
  }
}
