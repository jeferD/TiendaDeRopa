import 'package:TiendaDeRopa/views/bufandas.dart';
import 'package:TiendaDeRopa/views/gorros.dart';
import 'package:TiendaDeRopa/views/ruanas.dart';
import 'package:flutter/material.dart';

class paginaPrincipal extends StatefulWidget {
  @override
  _paginaPrincipalState createState() => _paginaPrincipalState();
}

class _paginaPrincipalState extends State<paginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.grey,
        drawer: DrawerMenu(), //MENU DESPLEGABLE
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black54),
          backgroundColor: Color(0xfff9f9f9),
          elevation: 0.0,
          actions: <Widget>[
            /*IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            ),*/
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                /*Navigator.of(context).push(MaterialPageRoute<Null>(
                  builder: (BuildContext context){
                    return new Gorros();
                  }
                  ));*/
                /*Navigator.push(
                context, MaterialPageRoute(builder: (context) => Gorros()));*/
              },
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/fondo.jpeg'),
              fit: BoxFit.cover,
              //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8),BlendMode.dstATop)
            )),
            child: ListView(
              padding: EdgeInsets.symmetric(
                vertical: 50,
              ),
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(99, 95, 94, 1),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/fondoSimple.jpeg'),
                        fit: BoxFit.cover,
                        //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8),BlendMode.dstATop)
                      )),
                  child: Column(
                    children: [
                      IconButton(
                        iconSize: 450,
                        icon: Image.asset(
                          'assets/6.jpg',
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Ruanas()));
                        },
                      ),
                      IconButton(
                        iconSize: 450,
                        icon: Image.asset(
                          'assets/1.jpg',
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gorros()));
                        },
                      ),
                      IconButton(
                        iconSize: 450,
                        icon: Image.asset(
                          'assets/2.jpg',
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gorros()));
                        },
                      ),
                      IconButton(
                        iconSize: 450,
                        icon: Image.asset(
                          'assets/3.jpg',
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Gorros()));
                        },
                      ),
                      IconButton(
                        iconSize: 450,
                        icon: Image.asset(
                          'assets/4.jpg',
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Ruanas()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//-----------------------------MENU DESPLEGABLE------------------------------
class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Gorros',
              onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Gorros();
                    }))
                  }),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Bufandas',
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bufandas()))
                  }),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Ruanas',
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ruanas()))
                  }),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone, text: 'Información', onTap: () => {}),
          ListTile(
            title: Text('App version 1.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/menu.jpeg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 20.0,
              left: 20.0,
              child: Text("ESTILO Y MAS",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
