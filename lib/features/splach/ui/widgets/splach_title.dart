import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplachTitle extends StatelessWidget {
  const SplachTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.sizeOf(context).width * 0.1,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/you have the power to.svg',
          ),
          const SizedBox(
            height: 36,
          ),
          SvgPicture.asset(
            'assets/images/just do it..svg',
          ),
        ],
      ),
    );
  }
}
