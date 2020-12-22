import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Gato extends StatefulWidget {
  @override
  _GatoState createState() => _GatoState();
}

class _GatoState extends State<Gato> {
  String imagen = '';
  bool _estado = false;
  AudioPlayer _audioPlayer;
  AudioCache _audioCache = AudioCache();
  int _gmi2 = 0;
  int _x = 0;
  final random = Random();

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioCache = AudioCache(fixedPlayer: _audioPlayer);
  }

  @override
  Widget build(BuildContext context) {
    final _tama = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Center(child: Text('Kya!')),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          height: _tama.height * 100,
          child: Column(
            children: <Widget>[
              AnimatedCrossFade(
                //para que se mueva el gato
                duration: Duration(milliseconds: 10),
                firstChild: imag(imagen = 'assets/gato_serio.png'),
                secondChild: imag(imagen = 'assets/gato_yamete.png'),
                crossFadeState: _estado
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(
                'Presiona el gato 7w7',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imag(imagen) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: AssetImage(imagen),
        ),
      ),
      onTap: () {
        setState(() {
          _gmi2 = random.nextInt(5);
          _estado = true;
          _audioCache.play('kya_$_gmi2.mpeg');
          regresa(_gmi2);
        });
      },
    );
  }

  Future<bool> regresa(_gmi2) {
    if (_gmi2 == 2) {
      _x = 2000;
    } else {
      _x = 1045;
    }
    return Future.delayed(Duration(milliseconds: _x), () {
      setState(() {
        _estado = false;
      });
      return null;
    });
  }
}
