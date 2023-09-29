import 'package:flutter/material.dart';
import 'package:movieapp_200644/media_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Movie App -- M-200644",
        style: TextStyle(
          fontFamily: 'AmaticSC',
          color: Color.fromRGBO(255, 253, 243, 50),
          fontSize: 30,)
          ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Color.fromRGBO(26, 27, 67, 50),
      ),
      drawer: new Drawer(
        child: new Container(
          color: Color.fromRGBO(184, 170, 203, 1),
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(
                child: Center(
                  child: Text(
                    'Menú',
                    style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                    ),
                  ),
                ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/fondoDrawerHeader.jpg'),
                    fit: BoxFit.cover)
                ),
              ),
              new ListTile(
                title: new Text("Peliculas",
                style: TextStyle(
                  fontFamily: 'MontserratAlternates',
                  color: Color.fromRGBO(255, 253, 243, 50)
                ),
                ),
                trailing: new Icon(Icons.local_movies,
                color: Color.fromRGBO(255, 253, 243, 50),),
              ),
              new Divider(
                height: 5.0,
              ),
              new ListTile(
                title: new Text("Televisión",
                style: TextStyle(
                  fontFamily: 'MontserratAlternates',
                  color: Color.fromRGBO(255, 253, 243, 50)
                ),
                ),
                trailing: new Icon(Icons.live_tv,
                color: Color.fromRGBO(255, 253, 243, 50),),
              ),
              new Divider(
                height: 5.0,
              ),
              new ListTile(
                title: new Text("Cerrar",
                style: TextStyle(
                  fontFamily: 'MontserratAlternates',
                  color: Color.fromRGBO(255, 253, 243, 50)
                ),
                ),
                trailing: new Icon(Icons.close,
                color: Color.fromRGBO(255, 253, 243, 50),),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        )
      ),
      body: new PageView(
        children: <Widget>[new MediaList()],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
        selectedItemColor: Color.fromRGBO(255, 219, 250, 0.855),
        unselectedItemColor: Color.fromRGBO(80, 80, 80, 1),
        backgroundColor: Color.fromRGBO(26, 27, 67, 50),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up), label: "Populares",),
      new BottomNavigationBarItem(
          icon: Icon(Icons.update), label: "Proximamente"),
      new BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favoritos")
    ];
  }
}
