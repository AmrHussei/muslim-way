import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view/widgets/taspeh_takbeer_widgets/build_item.dart';
import 'package:muslim_way/features/taspeh_takbeer/presentation/view_model/cubit/taspeh_takbeer_cubit.dart';
import '../../../../../../core/constant.dart';


class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildTaspehItem(
              text: 'تسبيح',
              onTap: (() => BlocProvider.of<TaspehTakbeerCubit>(context)
                  .navFunction(MyIncrementID.taspeh)),
            ),
            BuildTaspehItem(
              text: 'استغفار',
              onTap: (() => BlocProvider.of<TaspehTakbeerCubit>(context)
                  .navFunction(MyIncrementID.estkhfar)),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildTaspehItem(
              text: 'تكبير',
              onTap: (() => BlocProvider.of<TaspehTakbeerCubit>(context)
                  .navFunction(MyIncrementID.takbeer)),
            ),
            BuildTaspehItem(
              text: 'حوقله',
              onTap: (() => BlocProvider.of<TaspehTakbeerCubit>(context)
                  .navFunction(MyIncrementID.hwkala)),
            )
          ],
        )
      ],
    );
  }
}
