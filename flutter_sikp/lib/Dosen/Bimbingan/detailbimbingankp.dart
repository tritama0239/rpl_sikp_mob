import 'package:flutter/material.dart';

class DetailBimbingan extends StatefulWidget {
  List list;
  int index;
  DetailBimbingan({this.list, this.index});

  @override
  _DetailBimbinganState createState() => _DetailBimbinganState();
}

class _DetailBimbinganState extends State<DetailBimbingan> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['nim']}")),
      body: new Container(
        height: 200.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text("Nama : ${widget.list[widget.index]['name']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Pembimbing : ${widget.list[widget.index]['pembimbing']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Judul : ${widget.list[widget.index]['judul_kp']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Jadwal : ${widget.list[widget.index]['jdwl_ujian']}", style: new TextStyle(fontSize: 18.0),),
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
