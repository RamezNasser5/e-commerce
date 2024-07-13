import 'package:e_commerce/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).go(AppRouter.loginRoute);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1483C2),
      body: Padding(
        padding: EdgeInsets.all(
          MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(
              height: 36,
            ),
            SvgPicture.asset(
              'assets/images/image 3.svg',
            ),
          ],
        ),
      ),
    );
  }
}
