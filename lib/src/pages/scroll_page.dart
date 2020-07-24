import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  final _textStyle = TextStyle(fontSize: 80.0, color: Colors.white);
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth < 600){
            return PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                _pagina1(),
                _pagina2(),
              ],
            );
          }else{
            return _mostarColumnas(context);
          }
        },

      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _crearTextos(),
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: RaisedButton(
          elevation: 8.0,
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text("Bienvenido", style: TextStyle(fontSize: 20.0),)),
          onPressed: (){
          },
        ),
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage("assets/scroll-1.png"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTextos() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text("11º", style: _textStyle,),
          Text("Viernes", style: _textStyle,),
          Expanded(
            child: Container(),
          ),
          GestureDetector(
              onTap: (){
                _pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.fastLinearToSlowEaseIn);
              },
              child: Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 80.0,))
        ],
      ),
    );
  }

  Widget _mostarColumnas(context) {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Row(
        children: <Widget>[
          Image(width: MediaQuery.of(context).size.width*0.5,image: AssetImage("assets/scroll-1.png"),fit: BoxFit.cover,),
          Expanded(
            child: Center(
              child: RaisedButton(
                elevation: 8.0,
                shape: StadiumBorder(),
                color: Colors.blue,
                textColor: Colors.white,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Text("Bienvenido", style: TextStyle(fontSize: 20.0),)),
                onPressed: (){
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
