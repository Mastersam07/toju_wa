import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tojuwa/network/newsdata.dart';
import 'package:tojuwa/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CoronaNews extends StatefulWidget {

  @override
  _CoronaNewsState createState() => _CoronaNewsState();
}

class _CoronaNewsState extends State<CoronaNews> {
  var newslist;
  bool _loading = true;

  @override
  void initState() {
    getNews();
    // TODO: implement initState
    super.initState();
  }

  void getNews() async {
    NewsForCorona news = NewsForCorona();
    await news.getNewsForCorona();
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CachedNetworkImage(
                imageUrl:
                    "https://img.icons8.com/dusk/64/000000/activity-feed-2.png"),
            Text(
              "Corona",
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            )
          ],
        ),
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
            onPressed: (){
              Share.share(
                  "Download the Covid-19 Awareness App and share with your friends and loved ones.\nAwareness App -  https://bit.ly/betatojuwa");
            },
          ),
        ],
//        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ListView.builder(
                      itemCount: newslist.length,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return NewsTile(
                          imgUrl: newslist[index].urlToImage ?? "",
                          title: newslist[index].title ?? "",
                          desc: newslist[index].description ?? "",
                          content: newslist[index].content ?? "",
                          posturl: newslist[index].articleUrl ?? "",
                        );
                      }),
                ),
              ),
            ),
    );
  }
}
