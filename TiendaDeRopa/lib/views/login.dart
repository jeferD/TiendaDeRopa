import 'package:TiendaDeRopa/views/paginaPrincipal.dart';
import 'package:TiendaDeRopa/views/registro.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _usuario = TextEditingController();
  final _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/fondo.jpeg'),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8),BlendMode.dstATop)
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _usuario,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffixIcon: Icon(
                      Icons.perm_identity,
                      color: Colors.black,
                    ),
                    hintText: 'Usuario',
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _pass,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                    hintText: 'Contraseña',
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),
              validacion(),
              registro(),
            ],
          ),
        ),
      ),
    );
  }

  Widget validacion() {
    return OutlineButton(
        child: Text('Ingresar'),
        shape: StadiumBorder(),
        color: Colors.blueAccent,
        onPressed: () {
          var usuario = _usuario.text;
          var pass = _pass.text;
          if (usuario == '217036026' && pass == '217036026') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => paginaPrincipal()));
          } else {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    backgroundColor: Colors.white38,
                    content: Text(
                      'Usuario o contraseña incorrecta',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ));
              },
            );
          }
        });
  }

  Widget registro() {
    return FlatButton(
        child: Text(
          "Registrarse",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => registroUsuario()));
        });
  }
}
