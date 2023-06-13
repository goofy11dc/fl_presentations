import 'package:flutter/material.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  List<bool> languages = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: const Text('Язык приложения', style: TextStyle(fontSize: 22)),
        centerTitle: true,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 25, right: 18, bottom: 21, left: 16),
        
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
          
          child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                    title: Text(getLanguages(index)),
                    checkColor: Colors.white,
                    activeColor: Color(0xFFFABF00),
                    value: languages[index],
                    onChanged: (value) {
                      setState(() {
                        for (var i=0; i<languages.length; i++){
                          languages[i] = false;
                        };
                        languages[index] = value!;
                      });
                    });
              }),
        ),
      ),
    );
  }

  String getLanguages(int index) {
    switch (index) {
      case 0:
        return 'Кыргызча';
      case 1:
        return 'Русский';
      case 2:
        return 'English';
      default:
        return '';
    }
  }
}
