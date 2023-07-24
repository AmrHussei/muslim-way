import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/assets_data.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/features/quran/presentation/view/screens/settings_screen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/constant_of_quran.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 30,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 110.h,
                  width: 120.h,
                  child: Image.asset(
                    splashLogo,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.auto_fix_normal_outlined,
              size: 29.sp,
            ),
            title: Text(
              'حجم الخط',
              style: GoogleFonts.elMessiri(fontSize: 20.sp),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: MyColors.myGreen,
            ),
            title: Text(
              'مشاركة',
              style: GoogleFonts.elMessiri(fontSize: 20.sp),
            ),
            onTap: () {
              Share.share(
                  '''*Quran app*\n
u can develop it from my LinkedIn https://www.linkedin.com/in/amr-hussein-51a141220/ ''');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.star_rate_rounded,
              color: Colors.amber,
              size: 30.sp,
            ),
            title: Text(
              'تقيم',
              style: GoogleFonts.elMessiri(fontSize: 20.sp),
            ),
            onTap: () async {
              if (!await launchUrl(quranAppurl,
                  mode: LaunchMode.externalApplication)) {
                throw 'Could not launch $quranAppurl';
              }
            },
          ),
        ],
      ),
    );
  }
}
