import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  ArticleView({required this.blogUrl});
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<ArticleView> {
  final Completer<WebViewController> completer = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Live"),
              Text(
                "News",
                style: TextStyle(color: Colors.purpleAccent),
              )
            ],
          ),
        actions: <Widget>[
          Opacity(opacity: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.save)),
          )
        ],
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.blogUrl,
          onWebViewCreated: ((WebViewController webViewController){
            completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
