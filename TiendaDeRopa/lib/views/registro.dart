import 'package:TiendaDeRopa/views/paginaPrincipal.dart';
import 'package:flutter/material.dart';

class registroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Color(0xfff9f9f9),
        elevation: 0.0,
        title: Text(
          'Registro de usuario',
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/fondo.jpeg'),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8),BlendMode.dstATop)
          )),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Nombres'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Apellidos'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Dirección de envió'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Correo electronico'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: 'Contraseña'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: OutlineButton(
                  child: Text(
                    'Registrarme',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  shape: StadiumBorder(),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => paginaPrincipal()));
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
