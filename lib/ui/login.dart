import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/ui/info_screen.dart';

class LoginPage extends StatelessWidget {
  final bool isDarkTheme;
  final VoidCallback toggleThemeCallback;

  const LoginPage(
      {super.key,
      required this.isDarkTheme,
      required this.toggleThemeCallback});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InfoScreen()));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 43),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 43),
              Center(
                child: isDarkTheme
                    ? SvgPicture.asset('assets/logo_mbusiness_dark.svg')
                    : SvgPicture.asset('assets/logo_mbusiness_light.svg'),
              ),
              Switch(
                value: isDarkTheme,
                onChanged: (value) {
                  toggleThemeCallback();
                },
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Логин',
                  // fillColor: Theme.of(context).colorScheme.secondary
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Пароль',
                  // filled: true,
                  // fillColor: Theme.of(context).colorScheme.secondary
                ),
              ),
              const SizedBox(height: 72),
              TextButton(onPressed: () {}, child: const Text('Забыли пароль')),
              const SizedBox(height: 24),
              TextButton(onPressed: () {}, child: const Text('Регистрация')),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: const Text('Войти'),
                ),
              )
            ],
          ),
        ));
  }
}
