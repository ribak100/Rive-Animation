import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';

import '../widgets/animatedbtn.dart';
import '../widgets/custom_signin_dialog.dart';
import '../widgets/sign_in_form.dart';

class OnbodingScreen extends StatefulWidget {
  const OnbodingScreen({Key? key}) : super(key: key);

  @override
  State<OnbodingScreen> createState() => _OnbodingScreenState();
}

class _OnbodingScreenState extends State<OnbodingScreen> {
  late RiveAnimationController _btnAnimationCtr;
  bool isSignInDialogShown = false;

  @override
  void initState() {
    _btnAnimationCtr = OneShotAnimation("active", autoplay: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 200,
              left: 100,
              width: MediaQuery.of(context).size.width * 1.7,
              child: Image.asset("assets/Backgrounds/Spline.png")),
          const RiveAnimation.asset(
            "assets/RiveAssets/test.riv",
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: SizedBox(),
          )),
          
          AnimatedPositioned(
            top: isSignInDialogShown ? -50 : 0,
            duration: Duration(milliseconds: 240),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 260,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 39.0),
                          child: Text(
                            "The\nHidden World",
                            style: TextStyle(
                                fontSize: 60, fontFamily: "Poppins", height: 1.2),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 50.0,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ultricies magna et nisi auctor, quis laoreet nibh mattis. Donec tincidunt, quam a efficitur molestie, odio velit blandit tellus.",
                            maxLines: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  const SizedBox(
                    height: 108,
                  ),
                  Center(
                    child: Animatedbtn(
                      btnAnimationCtr: _btnAnimationCtr,
                      press: () {
                        setState(() {
                          isSignInDialogShown = true;
                        });
                        _btnAnimationCtr.isActive = true;
                        Future.delayed(Duration(milliseconds: 800), () {
                          customSigninDialog(context, onClosed: (_) {
                            setState(() {
                              isSignInDialogShown = false;
                            });
                          });
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                      child: SizedBox(
                          height: 65,
                          width: 300,
                          child: Text(
                            "Donec in elit elementum, rhoncus purus eget, vestibulum mauris. Nunc non ornare massa, et accumsan odio. Lorem ipsum dolor sit amet eget ante eros.",
                          ))),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }


}
