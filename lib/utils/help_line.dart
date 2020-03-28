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
  Future onPressed;

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
    icon: Icon(FontAwesomeIcons.whatsapp, size: 50.0,),
    onPressed: launchWhatsappNcdc(),
  ),
  Help(
    name: "NCDC",
    desc: "Call Ncdc helpline toll free",
    subtitle: "Get info on covid-19",
    image: "https://ncdc.gov.ng/themes/common/imgs/logo.jpg",
    icon: Icon(FontAwesomeIcons.phoneAlt, size: 50.0,),
  ),
  Help(
    name: "W.H.O",
    desc: "Send 'hi' to who on whatsapp",
    subtitle: "Get authentic info on covid-19",
    image: "https://ncdc.gov.ng/themes/common/imgs/logo.jpg",
    icon: Icon(FontAwesomeIcons.whatsapp, size: 50.0,),
    onPressed: launchWhatsappWho(),
  ),
];

Future launchWhatsappNcdc() async {
  const url = 'https://github.com/Mastersam07/wa_status_saver';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future launchWhatsappWho() async {
  const url = 'https://github.com/Mastersam07/wa_status_saver';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}