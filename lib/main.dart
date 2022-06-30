import 'package:flutter/material.dart';
import 'package:gadgetque/view/entry_pages/screen_entry/screen_entry.dart';
import 'package:get/get.dart';
import 'view/core/color.dart';

void main() {
  runApp(const GadgetQue());
}

class GadgetQue extends StatelessWidget {
  const GadgetQue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScreenEntry(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: kWhiteColor,
        ),
      ),
    );
  }
}
