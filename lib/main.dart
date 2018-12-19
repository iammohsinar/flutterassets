import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyMediaStateless());

class MyMediaStateless extends StatelessWidget {
  
  @override
  Widget build(BuildContext b) {
    return new MaterialApp(
      title: "My Media App",
      theme: ThemeData(        
        primaryColor: Colors.red,
      ),
      home: MyMediaStateful(),
    );
  }
}

class MyMediaStateful extends StatefulWidget {

  @override
  _MyMediaState createState() => _MyMediaState();
  
}

class _MyMediaState extends State<MyMediaStateful> {

@override
Widget build(BuildContext bc) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("My Media App"),        
      ),
      body: new Container(
        child: pixelRatioImage()
      ),
    );
  }

Widget myAssetImage() {
  return Image.asset("assets/truck/truck_art_1.jpg");
}

Widget myNetworkImage() {
  return Image.network("https://via.placeholder.com/150");
}

Widget myCachedImage() {
  return CachedNetworkImage(
    placeholder: CircularProgressIndicator(),
    imageUrl: "https://propakistani.pk/wp-content/uploads/2017/08/8-1.jpg",
  );
}


  Widget pixelRatioImage() {
  return Image.asset("assets/flight_land.png");
  }


} // end of state class


