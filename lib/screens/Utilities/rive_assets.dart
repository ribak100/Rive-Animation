import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAssets {
  final String artBoard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAssets(this.src,
      {required this.artBoard,
        required this.stateMachineName,
        required this.title,
        this.input});

  set setInput(SMIBool status) {
    input != status;
  }
}


List<RiveAssets> bottomNav = [
  RiveAssets("assets/RiveAssets/icons.riv",
      artBoard: "CHAT", stateMachineName: "CHAT_Interactivity", title: "chat"),
  RiveAssets("assets/RiveAssets/icons.riv",
      artBoard: "SEARCH",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search"),
  RiveAssets("assets/RiveAssets/icons.riv",
      artBoard: "SETTINGS",
      stateMachineName: "SETTINGS_Interactivity",
      title: "Settings"),
  RiveAssets("assets/RiveAssets/icons.riv",
      artBoard: "BELL",
      stateMachineName: "BELL_Interactivity",
      title: "Notifications"),
  RiveAssets("assets/RiveAssets/icons.riv",
      artBoard: "USER",
      stateMachineName: "USER_Interactivity",
      title: "Profile"),
];
