import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
// command: flutter pub add http
import 'package:http/http.dart' as http;

// generate your key on https://console.hgbrasil.com/keys/new_key_plan
const key = "6b796750";
const request = "https://api.hgbrasil.com/finance?key="+key;

void main() async {

  print(await getData());

  runApp(MaterialApp(
    home: Home(),
  ));
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  return json.decode(response.body);
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("\$ Conversor \$"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),

    );
  }
}


