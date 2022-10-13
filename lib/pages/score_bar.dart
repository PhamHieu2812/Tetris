import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tetris/values/app_colors.dart';
import 'package:tetris/values/app_styles.dart';
import 'package:tetris/pages/main.dart';

class ScoreBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScoreBarState();
}

class _ScoreBarState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Score: ${Provider.of<Data>(context).score}',
              style: AppStyles.h3.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
