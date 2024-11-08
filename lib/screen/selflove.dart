import 'dart:io';
import 'dart:ui' as ui;
import 'package:animated_react_button/animated_react_button.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../res/global.dart';

class SelfLove extends StatefulWidget {
  const SelfLove({super.key});

  @override
  State<SelfLove> createState() => _SelfLoveState();
}

class _SelfLoveState extends State<SelfLove> {
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.grey.shade900,
        title: Text("Self Love",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            RepaintBoundary(
              key: globalKey,
              child: Column(
                children: selfLoveQuotes.map((e) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5,top: 6,bottom: 6),
                    child: Container(
                      height:450,
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  child: Image.network(e['image'],
                                    width: double.infinity,
                                    height: 390,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 150,
                                  top: 150,
                                  left: 20,
                                  right: 20,
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      e['quote'],
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                AnimatedReactButton(
                                    defaultColor: Colors.grey,
                                    reactColor: Colors.red,
                                    onPressed: () async {
                                      await Future.delayed(Duration(seconds: 1));
                                      setState(() {
                                        wishList.add((e));
                                      });
                                    }),
                                Text("Like",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: 50,),
                                IconButton(onPressed: (){
                                  Clipboard.setData(ClipboardData(text: e['quote'] ?? 'No quote available'));
                                }, icon: Icon(Icons.copy,color: Colors.black,),),
                                Text("Copy",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width:40,),
                                IconButton(
                                    onPressed: () async{
                                      RenderRepaintBoundary boundary = globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
                                      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
                                      ByteData? byteData = (await image.toByteData(format: ui.ImageByteFormat.png)) as ByteData?;

                                      if (byteData != null) {
                                        Uint8List pngBytes = byteData.buffer.asUint8List();

                                        // save the screenshot
                                        final Directory? downloadsDir =await getDownloadsDirectory();

                                        File origFile =File("${downloadsDir!.path}/quote.png");

                                        origFile.writeAsBytesSync(byteData.buffer.asUint8List());

                                        // Share the screenshot
                                        await Share.shareXFiles([ XFile(origFile.path),]);
                                      }
                                    }, icon: Icon(Icons.download, color: Colors.black)),
                                Text("Share",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                                SizedBox(width: 10,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
