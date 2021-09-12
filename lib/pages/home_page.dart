import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
 static final String id='home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final List<String> _listItem =[
  'assets/images/ic_image1.jpg',
  'assets/images/ic_image2.png',
  'assets/images/ic_image3.jpeg',
  'assets/images/ic_image4.jpg',
  'assets/images/ic_image5.jpg',
];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
       title: Text("Apple Products"),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.yellowAccent
            ),
              child: Center(
                child: Text("7", style: TextStyle(color: Colors.grey, fontSize: 17),),
              ),
            ),

          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_image2.png"),
                  fit: BoxFit.cover,
                ),
              ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(0.1),
                      ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 40),),
                    SizedBox(height: 30,),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text("Shop Now", style: TextStyle(fontSize: 15),),
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 30,),
            //#body
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
              ),
            ),
          ]
        ),
      ),
    );
  }
  Widget cellOfList(String item){
   return Card(
     color: Colors.transparent,
     elevation: 0,
     child: Container(
       padding: EdgeInsets.all(15),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         image: DecorationImage(
           image: AssetImage(item),
           fit: BoxFit.cover,
         )
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Icon(Icons.favorite, color: Colors.red, size: 40,)
         ],
       ),
     ),
   );
  }
}
