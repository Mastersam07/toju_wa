import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class Measures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Protective measures'),
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
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/docs/protective_measures.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              onTapLink: (url) {
                launch(url);
              },
              data: snapshot.data,
              styleSheet: MarkdownStyleSheet(
                textAlign: WrapAlignment.start,
                p: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                h2: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                h1: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
                h3: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                a: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            );
          }

          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
              strokeWidth: 5,
            ),
          );
        },
      ),
    );
  }
}
