import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../res/global.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {

  String select="all";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.grey.shade900,
        title: Text("Articles",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child:Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ActionChip(
                    backgroundColor: select=="all"
                    ? Colors.white
                    : Colors.grey.shade300,
                    label: Text("All Topics",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        select="all";
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ActionChip(
                    backgroundColor: select=="lifestyle"
                        ? Colors.white
                        : Colors.grey.shade300,
                    label: Text("Lifestyle Article",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        select="lifestyle";
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ActionChip(
                    backgroundColor: select=="motivational"
                        ? Colors.white
                        : Colors.grey.shade300,
                    label: Text("Motivational Article",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        select="motivational";
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ActionChip(
                    backgroundColor: select=="health"
                        ? Colors.white
                        : Colors.grey.shade300,
                    label: Text("Health Article",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        select="health";
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ActionChip(
                    backgroundColor: select=="personalgrowth"
                        ? Colors.white
                        : Colors.grey.shade300,
                    label: Text("Personal Growth Article",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        select="personalgrowth";
                      });
                    },
                  ),
                  SizedBox(width: 10,),
                  ActionChip(
                    backgroundColor: select=="habits"
                        ? Colors.white
                        : Colors.grey.shade300,
                    label: Text("Habits Article",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: (){
                      setState(() {
                        select="habits";
                      });
                    },
                  ),
                ],
              ),
            ),

            Visibility(
              visible: select=="all" || select=="lifestyle",
              child: Column(
                  children: lifestyleArticles.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 800,
                        width:250,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Column(
                            children: [
                              Image.network(e['image'],height: 150,width: double.infinity,),
                              SizedBox(height: 10,),
                              Text(e['title'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              SizedBox(height:10,),
                              Text(e['description'],
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                                // overflow: TextOverflow.ellipsis,
                                // maxLines: 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
            ),

            Visibility(
              visible: select=="all" || select=="motivational",
              child: Column(
                children: motivationalArticles.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 700,
                      width:250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            Image.network(e['image'] ?? '',height: 150,width: double.infinity,),
                            SizedBox(height: 10,),
                            Text(e['title']?? 'No Title',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height:10,),
                            Text(e['description'],
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            Visibility(
              visible: select=="all" || select=="personalgrowth",
              child: Column(
                children: personalGrowthArticles.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1000,
                      width:250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            Image.network(e['image'] ?? '',height: 150,width: double.infinity,),
                            SizedBox(height: 10,),
                            Text(e['title']?? 'No Title',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height:10,),
                            Text(e['description'],
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            Visibility(
              visible: select=="all" || select=="habits",
              child: Column(
                children: habitsArticles.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 1100,
                      width:250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            Image.network(e['image'] ?? '',height: 150,width: double.infinity,),
                            SizedBox(height: 10,),
                            Text(e['title']?? 'No Title',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height:10,),
                            Text(e['description'],
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            Visibility(
              visible: select=="all" || select=="health",
              child: Column(
                children: healthArticles.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 700,
                      width:250,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            Image.network(e['image'] ?? '',height: 150,width: double.infinity,),
                            SizedBox(height: 10,),
                            Text(e['title']?? 'No Title',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            SizedBox(height:10,),
                            Text(e['description'],
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 3,
                            ),
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
