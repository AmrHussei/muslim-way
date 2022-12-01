import 'package:flutter/material.dart';

import '../../../../../core/assets_data.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        homeBg,
        fit: BoxFit.fill,
      ),
    );
  }
}


