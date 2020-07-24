
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BotonesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
          Color.fromRGBO(52, 54, 101, 1.0), Color.fromRGBO(35, 37, 57, 1.0)
        ],
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
        )
      ),
    );

    final cajaRosada = Transform.rotate(angle: pi /5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236,98, 188, 1.0),
              Color.fromRGBO(241, 142, 200, 1.0),
            ],
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
            top: -100,
            child: cajaRosada),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Classify transaction", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text("Hace cosas nazis... Si muchas cosas\n nazissss.", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigatorBar(context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container(),
          ),
        ],
        onTap: (int item){
          switch(item){
            case 1:
              Navigator.pushNamed(context, "/");
              break;
            case 2:
              Navigator.pushNamed(context, "/scroll");
              break;
          }
        },
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, "General"),
            _crearBotonRedondeado(Colors.purple, Icons.border_all, "General"),
          ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.green, Icons.border_all, "General"),
              _crearBotonRedondeado(Colors.grey, Icons.border_all, "General"),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.yellow, Icons.border_all, "General"),
              _crearBotonRedondeado(Colors.red, Icons.border_all, "General"),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.lightBlue, Icons.border_all, "General"),
              _crearBotonRedondeado(Colors.indigo, Icons.border_all, "General"),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.tealAccent, Icons.border_all, "General"),
              _crearBotonRedondeado(Colors.orange, Icons.border_all, "General"),
            ]
        ),
        TableRow(
            children: [
              _crearBotonRedondeado(Colors.brown, Icons.border_all, "General"),
              _crearBotonRedondeado(Colors.teal, Icons.border_all, "General"),
            ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color _color, IconData _icon, String _text) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(color:  Color.fromRGBO(62, 66, 107, 0.5), borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 35.0,
            backgroundColor: _color,
            child: Icon(_icon, color: Colors.white, size: 30.0,),
          ),
          Text(_text, style: TextStyle(color: Colors.pinkAccent),),
        ],
      ),
    );
  }
}
