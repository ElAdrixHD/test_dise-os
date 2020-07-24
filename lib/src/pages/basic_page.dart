import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      )
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Lago bonito", style: titleStyle,),
                      SizedBox(height: 7.0,),
                      Text("Hombre preguntandose la existencia de la vida", style: subtitleStyle),
                    ],
                  ),
                ),
                Icon(Icons.star, size: 30.0, color: Colors.red,),
                Text("100", style: TextStyle(fontSize: 20.0),)
              ],
            ),
          ),
    );
  }

  Widget _createImage() {
    return Image(
          image: NetworkImage("https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg"),
          fit: BoxFit.cover,
        );
  }

  Widget _createActions() {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _actions(Icons.call, "Call".toUpperCase(),(){print("Call");}),
          _actions(Icons.near_me, "Route".toUpperCase(), (){print("Route");}),
          _actions(Icons.share, "Share".toUpperCase(), (){print("Share");}),
        ],
      ),
    );
  }

  Widget _actions(IconData icon, String text, Function _metodo){
    return SafeArea(
      child: GestureDetector(
        onTap: _metodo,
        child: Column(
          children: <Widget>[
            Icon(icon, size: 40.0, color: Colors.blue,),
            Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue,),)
          ],
        ),
      ),
    );
  }

  Widget _createText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim dui vitae elit ultricies, vitae dignissim tortor finibus. Etiam ac fringilla neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet massa ut neque scelerisque posuere quis in massa. Aenean eget nisl sed tellus consectetur aliquam. Aenean rutrum ullamcorper est at efficitur. Mauris eu suscipit odio, a pellentesque purus. Aenean congue nisl neque, vel commodo diam facilisis id. Nulla auctor malesuada venenatis. Pellentesque mollis mattis augue, non fringilla tellus suscipit sit amet. Aenean id posuere nibh, nec aliquet enim. Nulla et nisl auctor augue accumsan blandit. Maecenas a bibendum mauris. Cras metus felis, porttitor sed sapien a, rutrum porttitor risus.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}
