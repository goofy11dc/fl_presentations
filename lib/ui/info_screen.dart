import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:login/ui/contacts.dart';
import 'package:login/ui/info/language.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: const Text('Информация', style: TextStyle(fontSize: 22)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 41),
          child: ListView(children: [
            ListTile(
              leading: Icon(CupertinoIcons.phone_circle, size: 36),
              iconColor: Colors.black,
              title: Text('Контакты'),
              trailing: Icon(
                CupertinoIcons.right_chevron,
                size: 20,
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contacts()));
              },
            ),
            const SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.currency_exchange, size: 36),
              iconColor: Colors.black,
              title: Text('Курсы валют'),
              trailing: Icon(
                CupertinoIcons.right_chevron,
                size: 20,
              ),
              tileColor: Colors.white,
              onTap: () {},
            ),
            const SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.language, size: 36),
              iconColor: Colors.black,
              title: Text('Язык приложения'),
              trailing: Icon(
                CupertinoIcons.right_chevron,
                size: 20,
              ),
              tileColor: Colors.white,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Languages()));
              },
            ),
            const SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.help, size: 36),
              iconColor: Colors.black,
              title: Text('Справка'),
              trailing: Icon(
                CupertinoIcons.right_chevron,
                size: 20,
              ),
              tileColor: Colors.white,
              onTap: () {},
            ),
          ]),
        )
        // child: Row(
        //   children: <Widget>[
        //     Icon(CupertinoIcons.phone_circle, size: 36),
        //     TextField(),
        //   ],
        // ),

        );
  }
}
