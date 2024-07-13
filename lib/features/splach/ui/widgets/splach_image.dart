import 'package:flutter/material.dart';

class SplachImage extends StatelessWidget {
  const SplachImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.sizeOf(context).width * 0.4,
      ),
      child: Image.asset(
        'assets/images/image 3.png',
      ),
    );
  }
}
