import 'package:flutter/material.dart';
import 'package:gadgetque/view/core/color.dart';
import 'package:gadgetque/view/core/space.dart';
import 'package:gadgetque/view/entry_pages/widget/action_button.dart';
import 'package:gadgetque/view/entry_pages/widget/app_bar.dart';
import 'package:gadgetque/view/entry_pages/widget/background_image.dart';
import 'package:gadgetque/view/entry_pages/widget/form_field.dart';
import 'package:gadgetque/view/entry_pages/widget/switch_bottom_textbutton.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundImage(image: 'asset/admin_background.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EntryAppbar(
                    iconColor: kGreyColor,
                    textColor: kWhiteColor,
                  ),
                  kHeigt100,
                  const Text(
                    'Hey ,\nLogin Now.',
                    style: TextStyle(color: kWhiteColor, fontSize: 28),
                  ),
                  kHeigt150,
                  const FormFields(name: 'Email'),
                  const FormFields(name: 'Password'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ActionButton(
                            color: kFormColor,
                            height: size.width * 0.1,
                            // size: size,
                            onTap: () {},
                            buttonName: 'Otp Login?',
                            width: size.width * 0.4),
                        ActionButton(
                            color: kFormColor,
                            height: size.width * 0.1,
                            // size: size,
                            onTap: () {},
                            buttonName: 'Sign Up',
                            width: size.width * 0.4)
                      ],
                    ),
                  ),
                  kHeigt150,
                  SwitchBottomTextButton(onTap: () {}, text: 'Register Now')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
