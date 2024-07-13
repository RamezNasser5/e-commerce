import 'package:e_commerce/core/router/app_router.dart';
import 'package:e_commerce/features/splach/ui/widgets/splach_image.dart';
import 'package:e_commerce/features/splach/ui/widgets/splach_title.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const SplachTitle(),
          const Expanded(
            flex: 6,
            child: SplachImage(),
          ),
          Expanded(
            child: SvgPicture.asset(
              'assets/images/Ellipse 3.svg',
            ),
          ),
        ],
      ),
    );
  }
}
