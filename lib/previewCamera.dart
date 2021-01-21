import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

class previewCamera extends StatefulWidget {
  final String imgPath;

  previewCamera({this.imgPath});
  @override
  _previewCameraState createState() => _previewCameraState();
}

class _previewCameraState extends State<previewCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(
                File(widget.imgPath),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.black,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      getBytesFromFile().then((bytes) {
                        Share.file('Share via', basename(widget.imgPath),
                            bytes.buffer.asUint8List(), 'image/path');
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<ByteData> getBytesFromFile() async {
    Uint8List bytes = File(widget.imgPath).readAsBytesSync() as Uint8List;
    return ByteData.view(bytes.buffer);
  }
}
