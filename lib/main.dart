import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // fontFamily: 'VarelaRound',
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(106, 43, 230, 4),
                const Color.fromRGBO(233, 114, 27, 4)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(20),
                    child: IconButton(
                      icon: Icon(Icons.info_outline),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 32.0,
                    ),
                  ),
                  Container(
                    //Company Name.
                    child: Placeholder(),
                    width: 200,
                    height: 100,
                    color: Colors.blue.withOpacity(0.2),
                  ),
                  Container(
                    //  color: Colors.red,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    padding: EdgeInsets.all(5),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                          labelText: "Mail/ Telefon Numarası",
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.3),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "Mail/ Telefon Numarası",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    padding: EdgeInsets.all(5),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        labelText: "Şifre",
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.3),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Şifre",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                        child: Text("Giriş"),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        textColor: Colors.white,
                        onPressed: () {}),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Şifrenizi mi unuttunuz?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45.0),
                    child: Text(
                      "_______________________   veya   _______________________",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                        child: Text("Google ile giriş yapın."),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        textColor: Colors.white,
                        onPressed: () {}),
                  ),
                  Container(
                    width: 400,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                        child: Text("Facebook ile giriş yapın."),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        textColor: Colors.white,
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                            children: <TextSpan>[
                              new TextSpan(text: "Hesabınız yok mu? "),
                              new TextSpan(
                                  text: "Üye Olun.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ])),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
