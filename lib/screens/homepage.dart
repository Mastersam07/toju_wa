import 'package:flutter/material.dart';
import 'package:tojuwa/screens/newsscreen.dart';
import 'package:tojuwa/utils/constants.dart';
import 'package:tojuwa/widgets/info_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tojuwa/screens/precautions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toju Wa'),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.lightbulb_outline,
              color: Colors.black,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.black,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: ListView(
                  children: <Widget>[
                    Text(
                      'Global',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        InfoBox(
                          title: 'Total cases',
                          number: 123456,
                          color: Colors.blue,
                          icon: Icon(FontAwesomeIcons.globeAmericas,
                              color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 25),
                        InfoBox(
                          title: 'Countries',
                          color: Colors.orange,
                          icon: Icon(Icons.flag, color: Colors.white),
                          number: 180,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        InfoBox(
                            title: 'Deaths',
                            color: Colors.red,
                            icon: Icon(FontAwesomeIcons.skull,
                                color: Colors.white, size: 20),
                            number: 123),
                        SizedBox(width: 25),
                        InfoBox(
                          title: 'Recovered',
                          number: 1234,
                          color: Colors.green,
                          icon: Icon(Icons.check, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Text(
                      'Nigeria',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        InfoBox(
                          title: 'Total cases',
                          number: 123456,
                          color: Colors.blue,
                          icon: Icon(FontAwesomeIcons.home,
                              color: Colors.white, size: 20),
                        ),
                        SizedBox(width: 25),
                        InfoBox(
                            title: 'Deaths',
                            color: Colors.red,
                            icon: Icon(FontAwesomeIcons.skull,
                                color: Colors.white, size: 20),
                            number: 123),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        InfoBox(
                          title: 'Recovered',
                          number: 1234,
                          color: Colors.green,
                          icon: Icon(Icons.check, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: kBoxLightColor,
                        borderRadius: kBoxesRadius,
                      ),
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.readme,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Protective measures',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Protective measures against the coronavirus',
                          style: TextStyle(fontSize: 15),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Measures()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: kBoxLightColor,
                        borderRadius: kBoxesRadius,
                      ),
                      child: ListTile(
                        leading: Icon(
                          FontAwesomeIcons.readme,
                          color: Colors.blue,
                        ),
                        title: Text(
                          'Latest News',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'Live updates about covid-19',
                          style: TextStyle(fontSize: 15),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CoronaNews()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
