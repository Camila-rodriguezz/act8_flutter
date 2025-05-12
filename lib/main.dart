import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/ioleta.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: <Widget>[
                    Text("Iniciar Sesion",
                        style: TextStyle(
                            color: Color(0xff18101d),
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                    SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff672774),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Usuario',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Contraseña',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("¿Olvidaste tu contraseña?",
                        style: TextStyle(color: Color(0xffa635ba))),
                    SizedBox(height: 30),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff2b0a33),
                      ),
                      child: Center(
                        child: Text('Iniciar Sesion',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Crear cuenta',
                        style: TextStyle(
                          color: Color(0xffa635ba),
                        ),
                      ),
                    ),
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
