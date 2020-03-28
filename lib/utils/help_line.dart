import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpData {
  List<Help> helplines;

  HelpData({this.helplines});

  HelpData.fromJson(Map<String, dynamic> json) {
    if (json['helplines'] != null) {
      helplines = new List<Help>();
      json['helplines'].forEach((v) {
        helplines.add(Help.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.helplines != null) {
      data['helplines'] = this.helplines.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Help {
  String name;
  String desc;
  String image;
  String subtitle;
  Icon icon;
  IconButton onPressed;

  Help({
    this.name,
    this.desc,
    this.subtitle,
    this.image,
    this.icon,
    this.onPressed,
  });

  Help.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    subtitle = json['desc'];
    image = json['image'];
    icon = json['icon'];
    onPressed = json['onPressed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['subtitle'] = this.subtitle;
    data['image'] = this.image;
    data['icon'] = this.icon;
    data['onPressed'] = this.onPressed;
    return data;
  }
}

List<Help> helplines = [
  Help(
    name: "NCDC",
    desc: "Send 'hi' to ncdc on whatsapp",
    subtitle: "Get info on covid-19",
    image: "https://ncdc.gov.ng/themes/common/imgs/logo.jpg",
    onPressed: IconButton(
      color: Colors.green,
      icon: Icon(
        FontAwesomeIcons.whatsapp,
        size: 50.0,
      ),
      onPressed: () => launchWhatsappNcdc(),
    ),
  ),
  Help(
    name: "NCDC",
    desc: "Call Ncdc helpline toll free",
    subtitle: "Get info on covid-19",
    image: "https://ncdc.gov.ng/themes/common/imgs/logo.jpg",
    onPressed: IconButton(
      color: Colors.green,
      icon: Icon(
        FontAwesomeIcons.phoneAlt,
        size: 50.0,
      ),
      onPressed: () => callNcdc(),
    ),
  ),
  Help(
    name: "W.H.O",
    desc: "Send 'hi' to who on whatsapp",
    subtitle: "Get authentic info on covid-19",
    image: "https://www.who.int/images/default-source/default-album/who-emblem-rgb.png?sfvrsn=39f388cd_0",
    onPressed: IconButton(
      color: Colors.green,
      icon: Icon(
        FontAwesomeIcons.whatsapp,
        size: 50.0,
      ),
      onPressed: () => launchWhatsappWho(),
    ),
  ),
];

Future<void> launchWhatsappNcdc() async {
  const url = 'https://api.whatsapp.com/send?phone=07087110839&text=Hi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> callNcdc() async {
  const url = 'tel://080097000010';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> launchWhatsappWho() async {
  const url = 'https://api.whatsapp.com/send?phone=41798931892&text=Hi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

// NCDC toll free number 080097000010