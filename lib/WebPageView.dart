import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class WebPageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return WebPageViewState();
  }
}
class WebPageViewState extends State<WebPageView>{

  Widget build(BuildContext context)
  { 
    return (new WebviewScaffold(
          url: "https://192.168.24.47:3000",
          withJavascript: true,
          appBar: new AppBar(
            title: new Text("PlanIT!"),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: ()
              {
                // Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder:(context)=>WebPageView()));
              },
            ),
          ),
          ignoreSSLErrors: true,
          geolocationEnabled: true,
        ));
  }
}