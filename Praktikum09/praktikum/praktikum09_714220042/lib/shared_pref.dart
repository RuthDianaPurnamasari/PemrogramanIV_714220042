import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myshared extends StatefulWidget {
  const Myshared({super.key});

  @override
  State<Myshared> createState() => _MysharedState();
}

class _MysharedState extends State<Myshared> {
  late SharedPreferences prefs;
  final _kataController = TextEditingController();
  String? _kata = '';

  @override
  void dispose() {
    _kataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Shared Preferences'),
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _kataController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  saveValue();
                  setState(() {
                    _kata = _kataController.text;
                  });
                },
                child: Text('Save'),
              ),
              const SizedBox(height: 20),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: _kata,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  getValue().then((value) {
                    setState(() {
                      _kata = value ?? 'Value not available';
                    });
                  });
                },
                child: Text('Get Data'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  deleteValue();
                },
                child: Text('Delete Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  saveValue() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('kata', _kataController.text);
    _kataController.clear();
  }

  getValue() async {
    prefs = await SharedPreferences.getInstance();
    String? kata = prefs.getString('kata');
    return kata;
  }

  deleteValue() async {
    prefs = await SharedPreferences.getInstance();
    prefs.remove('kata');
    _kata = '';
    setState(() {});
  }
}
