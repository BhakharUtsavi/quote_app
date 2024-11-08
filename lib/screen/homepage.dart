import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/widgets.dart';

import '../res/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> sampleImages = [
    "https://quotefancy.com/media/wallpaper/3840x2160/5391714-John-Schaar-Quote-The-future-is-not-some-place-we-are-going-to-but.jpg",
    "https://quotefancy.com/media/wallpaper/3840x2160/2484501-David-Halberstam-Quote-Being-a-professional-means-doing-your-job.jpg",
    "https://quotefancy.com/media/wallpaper/3840x2160/19047-Robin-S-Sharma-Quote-The-activity-you-re-most-avoiding-contains.jpg",
    "https://quotefancy.com/media/wallpaper/3840x2160/98090-Jim-Rohn-Quote-Service-to-others-leads-to-greatness.jpg",
    "https://www.myglobalviewpoint.com/wp-content/uploads/2018/03/Best-Travel-Quotes-to-Fuel-Your-Wanderlust-1170x774.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text("Quotes",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),
        ),
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed("wishlist");
                },
                child: Icon(Icons.favorite,color: Colors.red,)),
            ),
          ],
        ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FanCarouselImageSlider.sliderType1(
                imagesLink: sampleImages,
                isAssets: false,
                autoPlay: false,
                sliderHeight: 200,
                imageRadius: 20,
                showIndicator: true,
              ),
        
              SizedBox(height: 10,),
        
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("category");
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://tse2.mm.bing.net/th?id=OIP.fNtJnYD2MhK5r33VLOzUvwHaHa&pid=Api&P=0&h=180"),),
                        ),
                        Text("Categories",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("quotes");
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://e7.pngegg.com/pngimages/604/836/png-clipart-quotation-mark-computer-icons-pull-quote-quote-logo-monochrome-thumbnail.png"),),
                        ),
                        Text("Quotes",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("latest");
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/009/686/931/non_2x/sign-of-the-flower-symbol-is-isolated-on-a-white-background-flower-icon-color-editable-free-vector.jpg"),),
                        ),
                        Text("Latest",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("articles");
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage("https://www.creativefabrica.com/wp-content/uploads/2021/08/26/Writing-article-blog-icon-Graphics-16377457-1.jpg"),),
                        ),
                        Text("Articles",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //most popular
                  Text("Most Popular",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  
                  SizedBox(height: 3,),
                  
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("inspirational");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://img.freepik.com/premium-photo/green-leaf-background-close-up-view-nature-leave-abstract-spectacular-texture_31965-55886.jpg",height: 100,width: 150,))),
                      SizedBox(width: 28,),
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("amazing");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://wallpapercave.com/wp/wp4111787.jpg",height: 100,width: 150)))
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text("Inspirational Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(width: 65,),
                      Text("Amazing Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 20,),
                  
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("motivation");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://www.viewbug.com/media/mediafiles/2016/01/15/62330873_large1300.jpg",height: 100,width: 150,))),
                      SizedBox(width: 28,),
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("encouraging");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://images.squarespace-cdn.com/content/v1/61c4da8eb1b30a201b9669f2/0d54ab53-0db2-4f1f-8191-97847d2bd1b8/part-of-nature.jpg",height: 100,width: 150)))
                    ],
                  ),
                  
                  Row(
                    children: [
                      Text("Motivation Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(width: 72,),
                      Text("Encouraging Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30,),

                  Text("Treading Quotes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.network("https://i.pinimg.com/originals/8b/e4/19/8be4190e2e3d37a9aff892749d16b346.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/736x/90/34/ad/9034ade4e215f1c16e60d2431fb8a2c6.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/84/43/eb/8443eb31bf13e235528cbdc0fb22279e.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/0c/87/96/0c8796f4c25122306588e7778fac5794.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/f5/27/46/f527465d41fa98712c36297cb37f045b.png",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/dc/d8/27/dcd827c3baeb968793197bb4f18a20fb.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  Text("Wisdom Quotes",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.network("https://www.dreamsquote.com/wp-content/uploads/2019/05/31-Words-of-Wisdom-and-Inspirational-Quotes-1.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/23/3c/f9/233cf9b5eea1dc83a60f60926f7c1949.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/1c/93/e8/1c93e89d3097090f499f0385c93b1f9f.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://i.pinimg.com/originals/44/fa/db/44fadbafaf763352a5770bd892a654f3.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://www.dailyfunnyquote.com/wp-content/uploads/2018/06/78-Encourage-Quotes-And-Inspirational-Words-Of-Wisdom-51.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                        Image.network("https://explorepic.com/wp-content/uploads/2018/07/300-Motivational-Inspirational-Quotes-About-Words-Of-Wisdom-quotes-life-sayings-107.jpg",height: 150,width: 100,),SizedBox(width: 15,),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  //quote by category
                  Text("Quotes by Category",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight:FontWeight.bold,
                        fontSize: 20
                    ),
                  ),

                  SizedBox(height: 3,),

                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("victory");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://img.lovepik.com/background/20211022/large/lovepik-victorious-trophy-silhouette-background-image_500868504.jpg",height: 100,width: 150,))),
                      SizedBox(width: 28,),
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("cool");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://i.pinimg.com/originals/ab/44/82/ab4482a592f4dd28e5f57349a4777441.jpg",height: 100,width: 150)))
                    ],
                  ),

                  Row(
                    children: [
                      Text("Victory Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(width: 100,),
                      Text("Cool Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("confidence");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://i1.wp.com/www.infinitesoulblueprint.com/wp-content/uploads/2016/08/self-confidence-1-1.jpg?resize=2500%2C1673&ssl=1",height: 100,width: 150,))),
                      SizedBox(width: 28,),
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("weekend");
                          },
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("https://tse3.mm.bing.net/th?id=OIP.DuzSaGgQZoAw9JhYM-sDiAHaE8&pid=Api&P=0&h=180",height: 100,width: 150)))
                    ],
                  ),

                  Row(
                    children: [
                      Text("Confidence Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(width: 72,),
                      Text("Weekend Quotes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight:FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text("Articals",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Column(
                  children: lifestyleArticles.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed("lifestyle");
                        },
                        child: Container(
                          height: 300,
                          width:250,
                          decoration: BoxDecoration(
                            color : Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Column(
                              children: [
                                Image.network(e['image'],height: 150,width: double.infinity,fit: BoxFit.cover,),
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
                                SizedBox(height: 10,),
                                Text(e['description'],
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
