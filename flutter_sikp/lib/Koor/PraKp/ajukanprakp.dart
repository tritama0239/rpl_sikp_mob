import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AjukaPraKp extends StatefulWidget {
  AjukaPraKp({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _AjukaPraKpState createState() => _AjukaPraKpState();
}

class _AjukaPraKpState extends State<AjukaPraKp> {
  TextEditingController controllerJudul = new TextEditingController();
  TextEditingController controllerTools = new TextEditingController();
  TextEditingController controllerSpesifikasi = new TextEditingController();
  TextEditingController controllerLembaga = new TextEditingController();
  TextEditingController controllerPimpinan = new TextEditingController();
  TextEditingController controllerNotelp = new TextEditingController();
  TextEditingController controllerAlamat = new TextEditingController();
  TextEditingController controllerFax = new TextEditingController();
  TextEditingController controllerDoksurat = new TextEditingController();

  void adddata(){
    var url ="http://10.0.2.2/crudsikp/ajukanmhsprakp.php";

    http.post(url, body: {
      "judul": controllerJudul.text,
      "tools": controllerTools.text,
      "spesifikasi": controllerSpesifikasi.text,
      "lembaga": controllerLembaga.text,
      "pimpinan": controllerPimpinan.text,
      "noTelp": controllerNotelp.text,
      "alamat": controllerAlamat.text,
      "fax": controllerNotelp.text,
      "dokSurat": controllerDoksurat.text

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Ajukan Pra KP"),),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: new ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new TextField(
                      controller: controllerJudul,
                      decoration: new InputDecoration(
                          hintText: "Judul",
                          labelText: "Judul"
                      ),
                    ),
                    new TextField(
                      controller: controllerTools,
                      decoration: new InputDecoration(
                          hintText: "Tools",
                          labelText: "Tools"
                      ),
                    ),
                    new TextField(
                      controller: controllerSpesifikasi,
                      decoration: new InputDecoration(
                          hintText: "Spesifikasi",
                          labelText: "Spesifikasi"
                      ),
                    ),
                    new TextField(
                      controller: controllerLembaga,
                      decoration: new InputDecoration(
                          hintText: "Lembaga",
                          labelText: "Lembaga"
                      ),
                    ),
                    new TextField(
                      controller: controllerPimpinan,
                      decoration: new InputDecoration(
                          hintText: "Pimpinan",
                          labelText: "Pimpinan"
                      ),
                    ),
                    new TextField(
                      controller: controllerNotelp,
                      decoration: new InputDecoration(
                          hintText: "No Telp",
                          labelText: "No Telp"
                      ),
                    ),
                    new TextField(
                      controller: controllerAlamat,
                      decoration: new InputDecoration(
                          hintText: "Alamat",
                          labelText: "Alamat"
                      ),
                    ),
                    new TextField(
                      controller: controllerFax,
                      decoration: new InputDecoration(
                          hintText: "Fax",
                          labelText: "Fax"
                      ),
                    ),
                    new TextField(
                      controller: controllerDoksurat,
                      decoration: new InputDecoration(
                          hintText: "Dokumen",
                          labelText: "Dokumen"
                      ),
                    ),
                    new Padding(padding: const EdgeInsets.all(10.0)
                    ),
                    new RaisedButton(
                      child: new Text("Simpan"),
                      color: Colors.blueAccent,
                      onPressed: () {
                        adddata();
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ],
            )
        )
    );
  }
}
