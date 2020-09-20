import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget judul = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Taman Nasional Bromo',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pesona Alam Jawa Timur',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
            )
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget allButton = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _kolomButtons(color, Icons.call, 'Call'),
          _kolomButtons(color, Icons.near_me, 'Route'),
          _kolomButtons(color, Icons.share, 'Share'),
        ],
      ),
    );

    Widget allText = Container(
      padding: EdgeInsets.all(10),
      child: Text(
        'Taman Nasional Bromo Tengger Semeru adalah taman nasional '
        'di Jawa Timur, Indonesia, yang terletak di wiliyah administratif '
        'Kabupaten Pasuruan, Kabupaten Malang, Kabupaten Lumajang dan '
        'Kabupaten Proboliggo. Taman yang bentangan barat-timurnya '
        'sekitar 20-30 kilometer dan utara-selatannya sekitar 40 kilometer ini ditetapkan '
        'sejak tahun 1982 dengan luas wilayahnya sekitar 50.276,3 ha. '
        'Batas kaldera lautan pasir itu berupa dinding terjal, yang ketinggiannya'
        'antara 200-700 meter',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Layout Article',
      home: Scaffold(
        appBar: AppBar(title: Text('Layout Article')),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Image.network(
                  'https://dbijapkm3o6fj.cloudfront.net/resources/6882,1004,1,1,4,0,600,450/-4601-/20160607223240/taman-nasional-bromo-tengger-semeru.jpeg',
                  width: 600,
                  fit: BoxFit.cover,
                ),
                judul,
                allButton,
                allText
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _kolomButtons(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}
