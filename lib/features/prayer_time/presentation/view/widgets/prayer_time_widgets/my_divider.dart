import 'package:flutter/material.dart';

import '../../../../../../core/utils/constant.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: MyColors.names,
      thickness: 1,
    );
  }
}
