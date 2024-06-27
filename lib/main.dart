import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';
import 'package:palmkindle/themes/palm_theme.dart';
import 'package:palmkindle/utils/utility_function.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  setStatusBar();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setupScreenUtil(context);
    return MaterialApp(
      title: 'Palm Kindle',
      theme: baseTheme,
      home: const MyHomePage(title: 'Palm Kindle'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BaseColors.bgMuted,
        title: Text(
          widget.title,
          style: BaseTextStyle.displayLarge,
        ),
      ),
      body: Container(
        color: BaseColors.bgCanvas,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have pushed the button this many times',
                  style: BaseTextStyle.displayMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0),
                Text(
                  '$_counter',
                  style: BaseTextStyle.displayLarge.copyWith(
                    color: BaseColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: BaseColors.bgSubtle,
        foregroundColor: BaseColors.pmaDim,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
