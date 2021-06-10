import 'package:flutter/material.dart';
import 'package:flutter_sikp/Dosen/Bimbingan/dbimbingankp.dart';
import 'package:flutter_sikp/Dosen/Jadwal/dujian.dart';
import 'package:flutter_sikp/login.dart';

class DbDosen extends StatefulWidget {
  DbDosen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DbDosenState createState() => _DbDosenState();
}

class _DbDosenState extends State<DbDosen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Argo"),
              accountEmail: Text("argo@staff.ukdw.ac.id"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text("Bimbingan KP"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Bimbingan KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dbimbingankp(title: "Bimbingan KP")),
                );
              },
            ),
            ListTile(
              title: Text("Ujian KP"),
              trailing: Icon(Icons.book_sharp),
              subtitle: Text("Daftar Ujian KP"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DujianKp(title: "Daftar Ujian KP")),
                );
              },
            ),
            // ListTile(
            //   title: Text("Pengajuan KP"),
            //   trailing: Icon(Icons.book),
            //   subtitle: Text("Daftar Pengajuan KP"),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => DbKp(title: "Daftar Pengajuan KP")),
            //     );
            //   },
            // ),
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
            child: Text("Dashboard Dosen",
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          )
      ),
    );
  }
}
