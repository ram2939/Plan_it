import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class WebPageView extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {

    return (new WebviewScaffold(
          url: "https://192.168.24.47:3000",
          withJavascript: true,
          appBar: new AppBar(
            title: new Text("Widget webview"),
          ),
          ignoreSSLErrors: true,
          geolocationEnabled: true,
        )
    );
  }
}