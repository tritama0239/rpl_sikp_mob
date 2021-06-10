import 'package:flutter/material.dart';
import 'dart:async';

//import 'file:///C:/Users/user/AndroidStudioProjects/flutter_sikp/lib/Mahasiswa/SuratKeterangan/suratket.dart';
import 'package:flutter_sikp/Koor/Kp/koorkp.dart';
import 'package:flutter_sikp/Koor/PraKp/koorprakp.dart';
import 'package:flutter_sikp/Koor/SuratKeterangan/koorsuratket.dart';
import 'package:flutter_sikp/Koor/Registrasi/regis.dart';
import 'package:flutter_sikp/Koor/Batas/setbatas.dart';
import 'package:flutter_sikp/Koor/Jadwal/setujian.dart';
import 'package:flutter_sikp/login.dart';

class DbKoor extends StatefulWidget {
  DbKoor({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DbKoorState createState() => _DbKoorState();
}

class _DbKoorState extends State<DbKoor> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Andhika"),
              accountEmail: Text("andhika@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Pengajuan Surat Keterangan"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Pengajuan Surat Keterangan"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DbSuratKet(title: "Daftar Pengajuan Surat Keterangan")),
                );
              },
            ),
            ListTile(
              title: Text("Pengajuan Pra KP"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Pengajuan Pra KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DbPraKp(title: "Daftar Pengajuan Pra KP")),
                );
              },
            ),
            ListTile(
              title: Text("Pengajuan KP"),
              trailing: Icon(Icons.book),
              subtitle: Text("Daftar Pengajuan KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DbKp(title: "Daftar Pengajuan KP")),
                );
              },
            ),
            ListTile(
              title: Text("Ujian KP"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Ujian KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetUjian(title: "Ujian KP")),
                );
              },
            ),
            ListTile(
              title: Text("Daftar Registrasi"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Registrasi"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Regis(title: "Daftar Registrasi")),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.book_sharp),
              title: Text("Batas KP"),
              subtitle: Text("Atur Batas KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetBatas(title: "Atur Batas KP")),
                );
              },
            ),
            Divider(
              color: Colors.black,
              height: 20,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: Text("Logout"),
              trailing: Icon(Icons.exit_to_app),
              onTap: () async {
                // SharedPreferences pref = await SharedPreferences.getInstance();
                // await pref.setInt("is_login", 0);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Login(title: "Login")),
                );
              },
            )
          ],
        ),
      ),
      body: Container(
          child: Center(
            child: Text("Dashboard Koordinator",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          )
      ),
    );
  }
}
