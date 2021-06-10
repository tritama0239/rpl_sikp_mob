import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sikp/Mahasiswa/SuratKeterangan/ajukansuratket.dart';
import 'package:flutter_sikp/Mahasiswa/SuratKeterangan/detailsuratket.dart';
import 'package:http/http.dart' as http;

class DbSuratKet extends StatefulWidget {
  final String title;

  DbSuratKet({Key key, this.title,}) :super(key: key);

  @override
  _DbSuratKetState createState() => _DbSuratKetState();
}

class _DbSuratKetState extends State<DbSuratKet> {
  Future<List> getData() async{
    final response= await http.get("http://10.0.2.2/crud/getmhssk.php");
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Daftar Pengajuan Surat Keterangan"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: ()=>Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context) => new AjukanSuratKet(title: "Ajukan Surat Keterangan",),
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
                        builder: (BuildContext context)=> new DetailSuratket(list:list , index: i,) )
                ),
                child: new Card(
                  child: new ListTile(
                    title: new Text(list[i]['nim']),
                    leading: new Icon(Icons.widgets),
                    subtitle: new Text("Lembaga : ${list[i]['lembaga']}"),
                  ),
                ),
              )
          );
        }
    );
  }
}

