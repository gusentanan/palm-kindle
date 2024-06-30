import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palmkindle/presentation/common_ui/app_bar_widget.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

@RoutePage()
class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<StatefulWidget> createState() => LikesPageState();
}

class LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: BaseColors.bgMuted,
        title: Text(
          'Likes',
          style: BaseTextStyle.displayLarge,
        ),
      ),
      body: Container(
        color: BaseColors.bgCanvas,
        child: Center(
          child: Text(
            'Likes Page',
            style: BaseTextStyle.displayLarge.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
