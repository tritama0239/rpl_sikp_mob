import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailPraKp extends StatefulWidget {
  List list;
  int index;
  DetailPraKp({this.list, this.index});

  @override
  _DetailPraKpState createState() => _DetailPraKpState();
}

class _DetailPraKpState extends State<DetailPraKp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['nim']}")),
      body: new Container(
        height: 450.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text("Semester : ${widget.list[widget.index]['semester']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Tahun : ${widget.list[widget.index]['tahun']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Pelaksanaan : ${widget.list[widget.index]['sts_prakp']}", style: new TextStyle(fontSize: 18.0),),
                new Text("NIK : ${widget.list[widget.index]['nik']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Tools : ${widget.list[widget.index]['tools']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Spesifikasi : ${widget.list[widget.index]['spesifikasi']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Dokumen : ${widget.list[widget.index]['dokumen']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Penguji : ${widget.list[widget.index]['penguji']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Ruang : ${widget.list[widget.index]['ruang']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Lembaga : ${widget.list[widget.index]['lembaga']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Pimpinan : ${widget.list[widget.index]['pimpinan']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Alamat : ${widget.list[widget.index]['alamat']}", style: new TextStyle(fontSize: 18.0),),
                new Text("No. Telepon : ${widget.list[widget.index]['no_tlp']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Verifikasi : ${widget.list[widget.index]['sts_verif']}", style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //new RaisedButton(
                    // child: new Text("Edit"),
                    // color: Colors.blue,
                    // onPressed: ()=>Navigator.of(context).push(
                    //     new MaterialPageRoute(
                    //         builder:(BuildContext context)=> new editData(list: widget.list, index: widget.index,)
                    //     )
                    // )
                    //),
                    //new RaisedButton(
                    // child: new Text("Delete"),
                    // color: Colors.red,
                    // onPressed: ()=>confirm(),
                    //)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
