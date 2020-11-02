// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_in_the_dark/src/layout/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final endTime = DateTime(2020, 11, 2, 00, 00);
  final formLink =
      'https://docs.google.com/forms/d/1yfI9i7HBBUV3zFTUn0aVy53mCIW7fahwX4q0Ve3inGU';
  final memeLink = 'http://gph.is/19aLnvI';
  final meetupLink =
      'https://www.meetup.com/es-ES/GDG-Marbella/events/274034431/';

  int memeCount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Positioned(
              top: 310,
              left: Sizes.isWeb(context)
                  ? MediaQuery.of(context).size.width / 3.5
                  : 0,
              child: Image.asset('assets/landing.jpg',
                  width: Sizes.isWeb(context) ? 600 : 375, height: 440)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text('JUEVES 3 DICIEMBRE',
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                            letterSpacing: 2)),
                    Text('ONLINE',
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: 10,
                            color: Colors.white)),
                    SizedBox(height: 75),
                    SizedBox(
                      width: Sizes.isWeb(context) ? 600 : 250,
                      child: Text('Flutter in the Dark',
                          style: GoogleFonts.tradeWinds(
                              fontSize: Sizes.isWeb(context) ? 120 : 67,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.normal,
                              height: 1),
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(height: 270),
                    Text(
                      'COMPARTE EL DESAFÍO CON LA COMUNIDAD FLUTTER',
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                          letterSpacing: 1,
                          height: 1.8),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 48,
                      width: 258,
                      child: OutlineButton(
                          color: Colors.transparent,
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor, width: 2),
                          onPressed: () {
                            window.open(meetupLink, 'tab');
                          },
                          child: Text('Quiero Asistir',
                              style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Theme.of(context).primaryColor))),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Las inscripciones abren en:',
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    CountdownTimer(
                      endTime: endTime.millisecondsSinceEpoch,
                      widgetBuilder: (context, time) => Text(
                        time != null ? getTimeText(time) : '¡Ya están abiertas!',
                        style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    MaterialButton(
                        color: Theme.of(context).primaryColor,
                        height: 50,
                        minWidth: 260,
                        onPressed: DateTime.now().isAfter(endTime)
                            ? () {
                                window.open(formLink, 'tab');
                              }
                            : () {
                                if (memeCount == 0)
                                  return window.open(memeLink, '_self');

                                memeCount--;
                              },
                        child: Text('Inscríbete al Reto',
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w900, fontSize: 24))),
                    SizedBox(height: 70),
                    Text(
                        'ÚNETE Y PON A PRUEBA TUS HABILIDADES CON FLUTTER Y DART',
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                            letterSpacing: 3,
                            height: 1.8),
                        textAlign: TextAlign.center),
                    SizedBox(height: 20),
                    Text('3 NIVELES',
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: 0.1,
                            color: Colors.white)),
                    SizedBox(height: 20),
                    Text('3 RETOS',
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: 0.1,
                            color: Colors.white)),
                    SizedBox(height: 20),
                    Text('60 MINUTOS',
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            letterSpacing: 0.1,
                            color: Colors.white)),
                    SizedBox(height: 50)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  for (int i = 0;
                      i < MediaQuery.of(context).size.width ~/ 100;
                      i++)
                    Image.asset('assets/paper.png', fit: BoxFit.cover)
                ],
              ),
              Container(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text('ORGANIZAN',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w900,
                              fontSize: 14,
                              letterSpacing: 2)),
                      SizedBox(height: 20),
                      Image.asset('assets/fc.png'),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/marbella.png'),
                          SizedBox(width: 60),
                          Image.asset('assets/madrid.png')
                        ],
                      ),
                      SizedBox(height: 30),
                      FlatButton(
                          onPressed: () {
                            window.open(
                                'https://flutter-in-the-dark.web.app/#/code-of-conduct',
                                'self');
                          },
                          child: Text('Código de conducta',
                              style: GoogleFonts.workSans(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.white))),
                      FlatButton(
                          onPressed: () {},
                          child: Text('Inscripciones',
                              style: GoogleFonts.workSans(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.white))),
                      FlatButton(
                          onPressed: () {},
                          child: Text('Sponsors',
                              style: GoogleFonts.workSans(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: Colors.white))),
                      SizedBox(height: 50),
                      Text('Sigue el evento',
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                              color: Theme.of(context).backgroundColor)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                window.open(
                                    'https://www.youtube.com/channel/UCRrMSJGIf4aRWM1Tb1Iu5og',
                                    'tab');
                              },
                              child: Image.asset('assets/yt.png')),
                          SizedBox(width: 30),
                          GestureDetector(
                              onTap: () {
                                window.open(
                                    'https://twitter.com/intent/tweet?url=https%3A%2F%2Fflutter-in-the-dark.web.app&hashtags=FlutterInTheDark',
                                    'tab');
                              },
                              child: Image.asset('assets/tw.png'))
                        ],
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          window.open(
                              'https://www.pexels.com/@divinetechygirl', 'tab');
                        },
                        child: Text('Photo by Christina Morillo',
                            style: GoogleFonts.workSans(
                                decoration: TextDecoration.underline,
                                letterSpacing: 1,
                                color: Theme.of(context).backgroundColor)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/flutter.png'),
                          SizedBox(width: 10),
                          Text('Made with Flutter Web',
                              style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Theme.of(context).backgroundColor)),
                          SizedBox(height: 50),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }

  String getTimeText(CurrentRemainingTime time) {
    var timeText = '';

    if (time.days != null) timeText += '${time.days} días';
    if (time.hours != null) timeText += ' ${time.hours} horas';
    if (time.min != null) timeText += ' ${time.min} minutos';
    if (time.sec != null) timeText += ' ${time.sec} segundos';

    return timeText;
  }
}
