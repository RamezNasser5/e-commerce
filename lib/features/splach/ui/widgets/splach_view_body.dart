import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: Column(children: [
        SvgPicture.asset(
          'assets/images/you have the power to.svg',
        ),
        SvgPicture.asset(
          'assets/images/just do it..svg',
        ),
      ]),
    );
  }
}
