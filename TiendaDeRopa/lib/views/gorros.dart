import 'package:TiendaDeRopa/views/producto.dart';
import 'package:flutter/material.dart';

class Gorros extends StatefulWidget {
  @override
  _GorrosState createState() => _GorrosState();
}

class _GorrosState extends State<Gorros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        title: Text(
          'Gorros',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/fondoSimple.jpeg'),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8),BlendMode.dstATop)
          )),
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 30,
            ),
            children: [
              Card(
                margin: EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 30,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('assets/g1.jpg'),
                    ),
                    ListTile(
                      title: Text('Gorro azul '),
                      subtitle: Text('25000'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => productos()));
                            },
                            child: Text('Comprar')),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 30,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('assets/g2.jpg'),
                    ),
                    ListTile(
                      title: Text('Gorro azul '),
                      subtitle: Text('25000'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => productos()));
                            },
                            child: Text('Comprar')),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 30,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('assets/g3.jpg'),
                    ),
                    ListTile(
                      title: Text('Gorro azul '),
                      subtitle: Text('25000'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => productos()));
                            },
                            child: Text('Comprar')),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 30,
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      child: Image.asset('assets/g4.jpg'),
                    ),
                    ListTile(
                      title: Text('Gorro azul '),
                      subtitle: Text('25000'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => productos()));
                            },
                            child: Text('Comprar')),
                      ],
                    )
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
