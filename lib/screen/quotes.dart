import 'dart:io';
import 'dart:ui' as ui;
import 'package:animated_react_button/animated_react_button.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../res/global.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  GlobalKey globalKey = GlobalKey();
  GlobalKey globalKey1 = GlobalKey();
  GlobalKey globalKey2 = GlobalKey();
  GlobalKey globalKey3 = GlobalKey();
  GlobalKey globalKey4 = GlobalKey();
  GlobalKey globalKey5 = GlobalKey();
  GlobalKey globalKey6 = GlobalKey();
  GlobalKey globalKey7 = GlobalKey();
  GlobalKey globalKey8 = GlobalKey();
  GlobalKey globalKey9 = GlobalKey();
  GlobalKey globalKey10 = GlobalKey();
  GlobalKey globalKey11 = GlobalKey();
  GlobalKey globalKey12 = GlobalKey();
  GlobalKey globalKey13 = GlobalKey();
  GlobalKey globalKey14 = GlobalKey();
  GlobalKey globalKey15 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.grey.shade900,
        title: Text("Quotes",
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
                children: motivation.map((e) {
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

            RepaintBoundary(
              key: globalKey1,
              child: Column(
                children: inspirationalQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey2,
              child: Column(
                children: encouragingQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey3,
              child: Column(
                children: confidenceQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey4,
              child: Column(
                children: wisdomQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey5,
              child: Column(
                children: positiveThinkingQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey6,
              child: Column(
                children: peopleQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey7,
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

            RepaintBoundary(
              key: globalKey8,
              child: Column(
                children: latestQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey9,
              child: Column(
                children: trendingQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey10,
              child: Column(
                children: aloneQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey11,
              child: Column(
                children: amazingQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey12,
              child: Column(
                children: angryQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey13,
              child: Column(
                children: weekendQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey14,
              child: Column(
                children: victoryQuotes.map((e) {
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

            RepaintBoundary(
              key: globalKey15,
              child: Column(
                children: coolQuotes.map((e) {
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
