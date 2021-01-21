import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class screen5 extends StatefulWidget {
  @override
  _screen5 createState() => _screen5();
}

class _screen5 extends State<screen5> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart English - SDGS 4'),
        backgroundColor: Colors.pink[400],
        centerTitle: true,
      ),
      body: WebView(
        initialUrl:
            'https://www.necerz.com/2020/07/pengertian-rumus-simple-past.html',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
      floatingActionButton: _bookmarkButton(),
    );
  }

  _bookmarkButton() {
    return FutureBuilder<WebViewController>(
      future: _controller.future,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> controller) {
        if (controller.hasData) {
          return FloatingActionButton(
            onPressed: () async {
              var url = await controller.data.currentUrl();
              _favorites.add(url);
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text('Saved $url for later reading.')),
              );
            },
            child: Icon(Icons.favorite),
          );
        }
        return Container();
      },
    );
  }
}
