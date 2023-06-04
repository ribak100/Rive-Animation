import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rive/rive.dart';
import 'package:riveappdev/screens/widgets/sideBar_item.dart';

import '../Utilities/rive_utils.dart';
import 'animated_sideBar.dart';
import 'info_card.dart';

class SIdeMenu extends StatefulWidget {
  const SIdeMenu({Key? key}) : super(key: key);


  @override
  State<SIdeMenu> createState() => _SIdeMenuState();
}

class _SIdeMenuState extends State<SIdeMenu> {
  SideBarItem selectedBrowse = browse.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: 288,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF17203A),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: InfoCard(
                  name: "Hidden Kise",
                  profession: "App Developer",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 10),
                child: Text(
                  "BROWSE",
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
              ),
              Column(
                children: [
                  ...List.generate(browse.length, (index) =>
                      Column(
                        children: [
                          const Divider(
                            thickness: 1, color: Colors.white10,),
                          GestureDetector(
                            onTap: () {
                              browse[index].input!.change(true);
                              if (browse[index] != selectedBrowse) {
                                setState(() {
                                  selectedBrowse = browse[index];
                                });
                              }

                              Future.delayed(const Duration(seconds: 1), () {
                                browse[index].input!.change(false);
                              });
                            },
                            child: Stack(
                              children: [
                                AnimatedSideBar(isActive: browse[index] == selectedBrowse),
                                ListTile(
                                  leading: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: RiveAnimation.asset(
                                        browse.first.asset,
                                        artboard: browse[index].artBoard,
                                        onInit: (artBoard) {
                                          StateMachineController controller =
                                          RiveUtils.getRiverController(artBoard,
                                              StateMachineName:
                                              browse[index].stateMachineName);
                                          browse[index].input =
                                          controller.findSMI(
                                              "active") as SMIBool;
                                        },
                                      )),
                                  title: Text(browse[index].title,
                                    style: const TextStyle(
                                        color: Colors.white),),
                                ),
                              ],
                            ),
                          ),


                          index == 3 ?  const Padding(
                            padding: EdgeInsets.only(right: 180.0, top: 20, bottom: 20),
                            child: Text(
                              "HISTORY",
                              style: TextStyle(color: Colors.white54, fontSize: 16),
                            ),
                          ) : const SizedBox(),
                        ],
                      ),),

                ],
              ),
            ],
          ),
        ));
  }
}



