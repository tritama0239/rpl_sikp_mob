import 'package:flutter/material.dart';
import 'dart:async';

//import 'file:///C:/Users/user/AndroidStudioProjects/flutter_sikp/lib/Mahasiswa/SuratKeterangan/suratket.dart';
import 'package:flutter_sikp/Mahasiswa/Kp/mhskp.dart';
import 'package:flutter_sikp/Mahasiswa/PraKp/mhsprakp.dart';
import 'package:flutter_sikp/Mahasiswa/SuratKeterangan/mhssuratket.dart';
import 'package:flutter_sikp/login.dart';

// import 'package:flutter_app/main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class DbMhs extends StatefulWidget {
  DbMhs({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DbMhsState createState() => _DbMhsState();
}

class _DbMhsState extends State<DbMhs> {

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
              accountName: Text("Riswan Sulia Tritama"),
              accountEmail: Text("riswan.sulia@si.ukdw.ac.id"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "RS",
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
            // ListTile(
            //   title: Text("Pengajuan KP"),
            //   trailing: Icon(Icons.schedule),
            //   subtitle: Text("Daftar KP"),
            //   onTap: () {
            //     // Navigator.pop(context);
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => DbKp(title: "Daftar Pengajuan KP")),
            //     // );
            //   },
            // ),
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
            child: Text("Dashboard Mahasiswa",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          )
      ),
    );
}
}
