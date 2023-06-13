import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  final List<Icon> socialIcons = [
    Icon(Icons.telegram, color: Colors.black,),
    Icon(Icons.mail, color: Colors.black),
    Icon(Icons.mail, color: Colors.black)
  ];
  // const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: const Text('Контакты', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16, top: 41),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text('Контакт-центры',
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 17,
            //         fontWeight: FontWeight.w600)),
            // const SizedBox(height: 16),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            //   decoration: BoxDecoration(color: Colors.white),
            //   child: Column(children: [
            //     Row(children: [
            //       Expanded(
            //           child: Text(
            //         '+996 (770) 33-33-69',
            //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            //       )),
            //       Expanded(
            //           child: Text(
            //         '+996 (770) 33-33-69',
            //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            //       )),
            //     ]),
            //     SizedBox(
            //       height: 16,
            //     ),
            //     Row(children: [
            //       Expanded(
            //           child: Text(
            //         '+996 (770) 33-33-69',
            //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            //       )),
            //       Expanded(
            //           child: Text(
            //         '+996 (770) 33-33-69',
            //         style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            //       )),
            //     ])
            //   ]),
            // ),
            // const SizedBox(height: 32),
            const Text('Соц сети',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 16,),
            SizedBox(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: socialIcons.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: socialIcons[index],
                    onTap: () {
                      
                    },
                  );
                } 
              ),
            )
          ],
        ),
      ),
    );
  }
}
