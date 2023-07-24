import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_way/core/utils/constant.dart';
import 'package:muslim_way/features/quran/presentation/view/screens/surah_viewer.dart';
import 'package:muslim_way/features/quran/presentation/view/widgets/index_creator.dart';
import 'package:muslim_way/features/quran/presentation/view/widgets/mydrawer.dart';
import '../../../../../core/utils/constant_of_quran.dart';

class IndexSurahOfQuran extends StatefulWidget {
  const IndexSurahOfQuran({Key? key}) : super(key: key);

  @override
  State<IndexSurahOfQuran> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexSurahOfQuran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Go to bookmark',
        backgroundColor: MyColors.myGreen,
        onPressed: () async {
          fabIsClicked = true;
          if (await readBookmark() == true) {
            // ignore: use_build_context_synchronously
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurahBuilder(
                  arabic: quran[0],
                  sura: bookmarkedSura - 1,
                  suraName: arabicName[bookmarkedSura - 1]['name'],
                  ayah: bookmarkedAyah,
                ),
              ),
            );
          }
        },
        child: const Icon(Icons.bookmark),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_forward,
                size: 25.sp,
              ))
        ],
        centerTitle: true,
        title: Text(
          "القرآن",
          style: GoogleFonts.elMessiri(
            //fontFamily: 'quran',
            fontSize: 33.sp,
            fontWeight: FontWeight.bold,
            shadows: const [
              Shadow(
                offset: Offset(1, 1),
                blurRadius: 2.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
        backgroundColor: MyColors.myGreen,
      ),
      body: FutureBuilder(
        future: readJson(),
        builder: (
          BuildContext context,
          AsyncSnapshot snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              return indexCreator(snapshot.data, context);
            } else {
              return const Text('Empty data');
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        },
      ),
    );
  }
}
