import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class AjukanSuratKet extends StatefulWidget {
  AjukanSuratKet({Key key, this.title}) :super(key: key);
  final String title;

  @override
  _AjukanSuratKetState createState() => _AjukanSuratKetState();
}

class _AjukanSuratKetState extends State<AjukanSuratKet> {

  TextEditingController controllerSemester = new TextEditingController();
  TextEditingController controllerTahun = new TextEditingController();
  TextEditingController controllerNIM = new TextEditingController();
  TextEditingController controllerLembaga = new TextEditingController();
  TextEditingController controllerPemimpin = new TextEditingController();
  TextEditingController controllerNoTelp = new TextEditingController();
  TextEditingController controllerAlamat = new TextEditingController();
  TextEditingController controllerFax = new TextEditingController();
  TextEditingController controllerDokumen = new TextEditingController();
  TextEditingController controllerStsVerif= new TextEditingController();


  void adddata(){
    var url ="http://10.0.2.2/crudsikp/ajukanmhssurat.php";

    http.post(url, body: {
      "semester": controllerSemester.text,
      "tahun": controllerTahun.text,
      "nim": controllerNIM.text,
      "lembaga": controllerLembaga.text,
      "pemimpin": controllerPemimpin.text,
      "no_tlp": controllerNoTelp.text,
      "alamat": controllerAlamat.text,
      "fax": controllerFax.text,
      "dokumen": controllerDokumen.text,
      "sts_verif": controllerStsVerif.text

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Pengajuan"),),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: new ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    new TextField(
                      controller: controllerSemester,
                      decoration: new InputDecoration(
                          hintText: "Ganjil",
                          labelText: "Semester"
                      ),
                    ),
                    new TextField(
                      controller: controllerTahun,
                      decoration: new InputDecoration(
                          hintText: "20xx-xx-xx",
                          labelText: "Tahun"
                      ),
                    ),
                    new TextField(
                      controller: controllerLembaga,
                      decoration: new InputDecoration(
                          hintText: "Name",
                          labelText: "Lembaga"
                      ),
                    ),
                    new TextField(
                      controller: controllerPemimpin,
                      decoration: new InputDecoration(
                          hintText: "Name",
                          labelText: "Pemimpin"
                      ),
                    ),
                    new TextField(
                      controller: controllerNoTelp,
                      decoration: new InputDecoration(
                          hintText: "08xxxxxxxx97",
                          labelText: "Pimpinan"
                      ),
                    ),
                    new TextField(
                      controller: controllerAlamat,
                      decoration: new InputDecoration(
                          hintText: "Address",
                          labelText: "Alamat"
                      ),
                    ),
                    new TextField(
                      controller: controllerFax,
                      decoration: new InputDecoration(
                          hintText: "01xxxxxxxx10",
                          labelText: "Fax"
                      ),
                    ),
                    new TextField(
                      controller: controllerDokumen,
                      decoration: new InputDecoration(
                          hintText: "Dokumen.pdf",
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
