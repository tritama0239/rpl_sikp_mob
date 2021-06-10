import 'package:flutter/material.dart';

class DetailRegis extends StatefulWidget {
  List list;
  int index;
  DetailRegis({this.list, this.index});

  @override
  _DetailRegisState createState() => _DetailRegisState();
}

class _DetailRegisState extends State<DetailRegis> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['nim']}")),
      body: new Container(
        height: 480.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text("Nama : ${widget.list[widget.index]['name']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Pelaksanaan KP : ${widget.list[widget.index]['sts_kp']}", style: new TextStyle(fontSize: 18.0),),
                new Text("Pelaksanaan Pra KP : ${widget.list[widget.index]['sts_prakp']}", style: new TextStyle(fontSize: 18.0),),
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

