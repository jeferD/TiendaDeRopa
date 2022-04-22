import 'package:TiendaDeRopa/views/carrito.dart';
import 'package:flutter/material.dart';

class productos extends StatefulWidget {
  @override
  _productoState createState() => _productoState();
}

class _productoState extends State<productos> {
  List<String> listaDeOpcionest = <String>["S", "M", "L", "XL"];
  List<String> listaDeOpcionesc = <String>["1", "2", "3", "4"];
  String _vistat = "Seleccione talla";
  String _vistac = "Seleccione cantidad";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
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
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    width: 550,
                    height: 350,
                    child: Image.asset('assets/r1.jpg'),
                  ),
                  ListTile(
                    title: Text(
                      'Ruana artesanal ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    subtitle: Text(
                      '25000',
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButton(
                          items: listaDeOpcionest.map((e) {
                            /// Ahora creamos "e" y contiene cada uno de los items de la lista.
                            return DropdownMenuItem(child: Text(e), value: e);
                          }).toList(),
                          onChanged: (_value) => {
                            setState(() {
                              _vistat = _value;
                            })
                          },
                          hint: Text(_vistat),
                        ),
                        Container(
                          child: Text(" "),
                        ),
                        DropdownButton(
                          items: listaDeOpcionesc.map((e) {
                            /// Ahora creamos "e" y contiene cada uno de los items de la lista.
                            return DropdownMenuItem(child: Text(e), value: e);
                          }).toList(),
                          onChanged: (_value) => {
                            setState(() {
                              _vistac = _value;
                            })
                          },
                          hint: Text(_vistac),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 250.0,
                    height: 40.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => carrito()));
                    },
                    color: Colors.blue,
                    child: Text('AGREGAR AL CARRITO',
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
