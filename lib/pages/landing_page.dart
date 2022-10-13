import 'package:flutter/material.dart';
import '../values/app_assets.dart';
import '../values/app_styles.dart';
import '../values/app_colors.dart';
import 'main.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLandingPageColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(AppAssets.tettrisApp)),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Tetris.',
                      style: AppStyles.h1.copyWith(
                          color: AppColors.playBackGround,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 72),
                child: RawMaterialButton(
                    shape: CircleBorder(),
                    fillColor: AppColors.playColor,
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => Tetris()),
                          (route) => false);
                    },
                    child: Image.asset(AppAssets.rightArrow)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
