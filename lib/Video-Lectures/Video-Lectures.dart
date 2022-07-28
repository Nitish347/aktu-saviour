import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class VideoLecture extends StatelessWidget {
  // const VideoLecture({Key? key}) : super(key: key);
  String url;
  String subname;
  String subcode;
  List<Color> colors;
    VideoLecture({required this.colors,required this.url,required this.subcode,required this.subname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors[1],
        title: Text(
          "${subname}(${subcode})",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(

        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: url,
          backgroundColor: Colors.black,

        ),
      ),
    );
  }
}
