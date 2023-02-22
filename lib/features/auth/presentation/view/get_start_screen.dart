import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/features/auth/presentation/view_model/cubit/auth_cubit.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              getStartBg,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 290.h,
            right: 43.w,
            child: Image.asset(
              splashLogo,
              height: 250.h,
              width: 275.w,
            ),
          ),
          Positioned(
            left: 30.w,
            bottom: 50.h,
            child: MaterialButton(
              minWidth: 300.w,
              height: 50.h,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.sp)),
              color: MyColors.myGreen,
              onPressed: () async {
                await BlocProvider.of<AuthCubit>(context).userAuth();
              },
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: ((context, state) {
                  if (state is AuthLoading) {
                    return const LoadingWidget();
                  } else {
                    return Text(
                      'ابدأ الأن',
                      style: GoogleFonts.elMessiri(
                          color: Colors.white, fontSize: 18.sp),
                    );
                  }
                }),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.white,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          'انتظر من فضلك',
          style: GoogleFonts.elMessiri(color: Colors.white, fontSize: 18.sp),
        )
      ],
    );
  }
}
