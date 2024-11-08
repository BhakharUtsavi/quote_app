import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        backgroundColor: Colors.grey.shade900,
        title: Text("Category",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("alone");
                    },
                      child: Image.network("https://wallpapercave.com/wp/wp7885866.jpg",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("amazing");
                      },
                      child: Image.network("https://wallpaperaccess.com/full/2773495.jpg",height: 170,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("Alone Quote",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:90 ),
                  Text("Amazing Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("motivation");
                    },
                      child: Image.network("https://c8.alamy.com/comp/2A53KWW/text-sign-showing-stay-positive-work-hard-make-it-happen-business-photo-text-inspiration-motivation-attitude-different-width-alternating-horizontal-s-2A53KWW.jpg",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("inspirational");
                      },
                      child: Image.network("https://wallpaperaccess.com/full/148452.png",height: 170,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("Motivation Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:50 ),
                  Text("Inspirational Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("encouraging");
                    },
                      child: Image.network("https://i.pinimg.com/originals/93/c7/71/93c771b6e53f0ca0e31c6a422d0cb395.jpg",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("confidence");
                      },
                      child: Image.network("https://s3.amazonaws.com/coursesity-blog/2022/06/Neutral-Abstract-Self-Confidence-Instagram-Post.jpg",height: 150,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("Encouraging Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:50 ),
                  Text("Confidence Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("wisdom");
                      },
                      child: Image.network("http://3.bp.blogspot.com/-nQGchpX0qTc/UFR3QzLJ8JI/AAAAAAAAAZQ/HceeMsOkC1E/s1600/way+of+wisdom+the_t_nv.jpg",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("positivethinking");
                      },
                      child: Image.network("https://media.istockphoto.com/id/1482969970/vector/word-cloud-background-concept-for-positive-thinking-success-attitude-creative-mindset-of.jpg?s=1024x1024&w=is&k=20&c=al2wxID5h5BW-KrF13pi48y-3CMhga6VY-tj01IBkDs=",height: 150,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("Wisdom Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:70),
                  Text("Positive Thinking Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("people");
                      },
                      child: Image.network("https://www.colourbox.com/preview/1260661-.jpg",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("selflove");
                      },
                      child: Image.network("https://i.pinimg.com/originals/b3/94/dd/b394dd7bf063d5ed506669fe557e3e86.jpg",height: 150,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("People Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:90 ),
                  Text("Self Love Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("latestcategory");
                      },
                      child: Image.network("https://images.unsplash.com/photo-1533422902779-aff35862e462?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aG9yaXpvbnRhbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("trending");
                      },
                      child: Image.network("https://img.freepik.com/premium-photo/trending-pink-christmas-horizontal-web-site-banner_957479-8125.jpg",height: 150,width: 170,))
                ],
              ),
        
              Row(
                children: [
                    Text("Latest Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:90 ),
                  Text("Trending Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("angry");
                      },
                      child: Image.network("https://c8.alamy.com/comp/2AFT8P7/angry-unhappy-woman-saying-no-way-speech-balloon-with-no-scream-exclamation-negation-concept-furious-girl-with-crossed-arms-gesture-flat-portrait-horizontal-vector-illustration-2AFT8P7.jpg",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("weekend");
                      },
                      child: Image.network("https://thumbs.dreamstime.com/b/enjoy-weekend-chalkboard-blue-sky-background-text-44989391.jpg",height: 150,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("Angry Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:90 ),
                  Text("Weekend Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),
        
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("victory");
                      },
                      child: Image.network("https://tse4.mm.bing.net/th?id=OIP.1Bw0ryS4DMx6G9metNjcDQHaFS&pid=Api&P=0&h=180",height: 150,width: 150,)),
                  SizedBox(width: 12,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed("cool");
                    },
                      child: Image.network("https://ipt.imgix.net/205979/x/0/leonardopapera-horizontal-2.jpg",height: 150,width: 170,))
                ],
              ),
        
              Row(
                children: [
                  Text("Victory Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width:90 ),
                  Text("Cool Quote",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
