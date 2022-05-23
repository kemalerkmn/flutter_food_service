import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () => runApp(MaterialApp(
home: HomePage(),
debugShowCheckedModeBanner: false,
));
class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ), onPressed: () {  },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
                child: Padding(
                  padding:  EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SoFood",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                      SizedBox(height: 10,),
                      Text("easy diner ideas",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(15)

                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search you're looking for",
                              hintStyle: TextStyle(color: Colors.blueGrey,fontSize: 15,fontWeight: FontWeight.w600),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.blueGrey,
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:15),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Diner İdeas",style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    food("assets/images/two.jpg"),
                    food("assets/images/six.jpg"),
                    food("assets/images/three.jpg"),
                    food("assets/images/five.jpg"),
                    food("assets/images/four.jpg"),
                    food("assets/images/one.jpg"),
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Popular İdeas",style: TextStyle(color: Colors.deepPurple,fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    popular("assets/images/two.jpg"),
                    popular("assets/images/six.jpg"),
                    popular("assets/images/three.jpg"),
                    popular("assets/images/five.jpg"),
                    popular("assets/images/four.jpg"),
                    popular("assets/images/one.jpg"),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget food(image) {

  return AspectRatio(aspectRatio: 2.62/3,
      child: Container(
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1,0.9],
            colors:[
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]
          ),
        ),
      
      ),
  );
}

Widget popular(image) {

  return AspectRatio(aspectRatio: 5.8/3,
      child: Container(
        margin: EdgeInsets.all( 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1,0.9],
            colors:[
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]
          ),
        ),
      
      ),
  );
}