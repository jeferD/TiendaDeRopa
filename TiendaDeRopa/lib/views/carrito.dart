import 'package:TiendaDeRopa/views/paginaPrincipal.dart';
import 'package:flutter/material.dart';

class carrito extends StatefulWidget {
  @override
  _carritoState createState() => _carritoState();
}

class _carritoState extends State<carrito> {
  List<String> listaDeOpcionesp = <String>[
    "pago en efectivo",
    "PSE",
    "Targeta de credito"
  ];
  String _vistap = "Seleccione Medio de pago";
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
          child: SizedBox(
            height: 500,
            child: Card(
              semanticContainer: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 30,
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                      title: Text('Ruana artesanal',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      subtitle: Text(
                          '25000' + "\n" + "Cantidad: 1" + "\n" + "talla: L"),
                      leading: Image.asset('assets/r1.jpg', width: 100)),
                  ListTile(
                      title: Text('Gorro Dama',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      subtitle: Text(
                          '25000' + "\n" + "Cantidad: 1" + "\n" + "talla: M"),
                      leading: Image.asset('assets/g1.jpg', width: 100)),
                  ListTile(
                      title: Text('Bufanda Dama',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      subtitle: Text(
                          '25000' + "\n" + "Cantidad: 1" + "\n" + "talla: S"),
                      leading: Image.asset('assets/b2.jpg', width: 100)),
                  DropdownButton(
                    items: listaDeOpcionesp.map((e) {
                      /// Ahora creamos "e" y contiene cada uno de los items de la lista.
                      return DropdownMenuItem(child: Text(e), value: e);
                    }).toList(),
                    onChanged: (_value) => {
                      setState(() {
                        _vistap = _value;
                      })
                    },
                    hint: Text(_vistap),
                  ),
                  MaterialButton(
                    minWidth: 250.0,
                    height: 40.0,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => paginaPrincipal()));
                    },
                    color: Colors.blue,
                    child: Text('Finalizar compra',
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
