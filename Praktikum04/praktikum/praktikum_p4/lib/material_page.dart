import 'package:flutter/material.dart';
import 'package:praktikum_p4/material_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(title: Text('Home Page')),
            ListTile(title: Text('About Page')),
          ],
        ),
      ),
      body: Mytask(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String teks;

  const BiggerText({Key? key, required this.teks}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.teks,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.green, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text(
        'Hi',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Mypadding extends StatelessWidget {
  const Mypadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: const Text(
        'Hai',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Mycenter extends StatelessWidget {
  const Mycenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text('Text berada di tengah'),
    );
  }
}

class Mysizebox extends StatelessWidget {
  const Mysizebox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Teks 1'),
        SizedBox(
          height: 20,
        ),
        Text('Teks 2'),
      ],
    );
  }
}

class Mycolumn extends StatelessWidget {
  const Mycolumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          'Ini Judul',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text('Universitas Logistik dan Bisnis Internasional (ULBI)'),
      ],
    );
  }
}

class Myrow extends StatelessWidget {
  const Myrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        Icon(Icons.share),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    );
  }
}

class Mytask extends StatelessWidget {
  const Mytask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('MainAxisAlignment.spaceEvenly'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
        Padding(padding: const EdgeInsets.all(20)),
        Text('MainAxisAlignment.spaceAround'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
        Padding(padding: const EdgeInsets.all(20)),
        Text('MainAxisAlignment.spaceBetween'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
        Padding(padding: const EdgeInsets.all(20)),
        Text('MainAxisAlignment.start'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
        Padding(padding: const EdgeInsets.all(20)),
        Text('MainAxisAlignment.center'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
        Padding(padding: const EdgeInsets.all(20)),
        Text('MainAxisAlignment.end'),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
      ],
    );
  }
}
