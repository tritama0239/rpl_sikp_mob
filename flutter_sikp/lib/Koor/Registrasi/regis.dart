import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sikp/Koor/Registrasi/detailregis.dart';
import 'package:flutter_sikp/Koor/Registrasi/regis.dart';
import 'package:http/http.dart' as http;

class Regis extends StatefulWidget {
  Regis({Key key, this.title}) :super(key: key);

  final String title;

  @override
  _RegisState createState() => _RegisState();
}

class _RegisState extends State<Regis> {
  Future<List> getData() async{
    final response= await http.get("http://10.0.2.2/crud/getkoorregis.php");
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Daftar Registrasi"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: ()=>Navigator.of(context).push(
          new MaterialPageRoute(

          ),
        ),
      ),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(list: snapshot.data)
              : new Center( child: new CircularProgressIndicator(),);
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget{

  final List list;
  ItemList({this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list==null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
              padding: const EdgeInsets.all(10.0),
              child: new GestureDetector(
                onTap: ()=>Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context)=> new DetailRegis(list:list , index: i,) )
                ),
                child: new Card(
                  child: new ListTile(
                    title: new Text(list[i]['nim']),
                    leading: new Icon(Icons.widgets),
                    subtitle: new Text("Nama : ${list[i]['name']}"),
                  ),
                ),
              )
          );
        }
    );
  }
}

