import 'package:flutter/material.dart';
import 'package:gatoxd/src/page/home_page.dart';
//import 'package:gatoxd/src/page/presentacion.dart';

void main() {
  return runApp(InicioPage());
}

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nyan',
      initialRoute: 'kya',
      darkTheme: ThemeData.dark(),
      routes: {
        //'present': (BuildContext context) => Presentacion(),
        'kya': (BuildContext context) => Gato(),
      },
    );
  }
}
