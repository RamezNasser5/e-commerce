import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialAccountIcons extends StatelessWidget {
  const SocialAccountIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).width * 0.1,
        horizontal: MediaQuery.sizeOf(context).width * 0.25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/images/Group.svg'),
          SvgPicture.asset(
              'assets/images/iconfinder_square-facebook_317727.svg'),
        ],
      ),
    );
  }
}
