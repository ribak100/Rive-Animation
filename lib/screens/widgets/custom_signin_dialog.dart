import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:riveappdev/screens/widgets/sign_in_form.dart';

Future<Object?> customSigninDialog(BuildContext context, {required ValueChanged onClosed}) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "Sign In",
      context: context,
      transitionDuration: Duration(milliseconds: 400),
      transitionBuilder: (_, animation, __, child) {
        Tween<Offset> tween;
        tween = Tween(begin: const Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          ),
          child: child,
        );
      },
      pageBuilder: (context, _, __) => Center(
        child: Container(
          height: 605,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          padding:
          const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.94),
              borderRadius: const BorderRadius.all(Radius.circular(40))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              clipBehavior: Clip.none,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        "Sign In",
                        style:
                        TextStyle(fontFamily: "Poppins", fontSize: 34),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                            "Enter the Underworld and enjoy the sight of unimaginable reality, both beautiful and scary creatures(Be Warned)",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black45)),
                      ),
                      const SignInForm(),
                      Row(
                        children: const [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "OR",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ),
                          Expanded(child: Divider())
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 17.0),
                        child: Text(
                          "Sign in with Email, Apple or Google",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 10.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/email_box.svg",
                                height: 64,
                                width: 64,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/apple_box.svg",
                                height: 64,
                                width: 64,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                "assets/icons/google_box.svg",
                                height: 64,
                                width: 64,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: -48,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white.withOpacity(0.80),
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ),
        ),
      )
  ).then(onClosed);
}