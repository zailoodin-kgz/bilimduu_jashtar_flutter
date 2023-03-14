import 'package:flutter/material.dart';
import 'package:flutter4_login_page/ui/my_button.dart';

import '../theme/appColors/app_colors.dart';
import '../theme/appFonts/app_fonts.dart';
import 'text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String? errorText;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 143, 143),
      appBar: AppBar(
        title: const Text(
          'Тапшырма 4',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 131, 201, 52),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatar.png',
                      ),
                      radius: 75,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Zailoodin T.',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextField(
                  text: 'Email',
                  extra: '*',
                  errorText: errorText,
                  hintText: 'example@gmail.com',
                  controller: controllerEmail,
                  onChanged: (val) {
                    if (val.contains('@')) {
                      errorText = null;
                    } else {
                      errorText = 'Введите корректный email';
                    }
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextField(
                  text: 'Pasword',
                  extra: '*',
                  hintText: '•••••••••',
                  controller: controllerPassword,
                  obscureText: isPassword,
                  helperText: 'вы здесь должен ввести 12 значный код',
                  maxlength: 12,
                  suffix: IconButton(
                    onPressed: () {
                      isPassword = !isPassword;
                      setState(() {});
                    },
                    icon: Icon(
                      isPassword ? Icons.remove_red_eye : Icons.visibility_off,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgotten password?',
                        style: AppFonts.w700s13
                            .copyWith(color: Color.fromARGB(255, 231, 216, 8)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                MyElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
                      style: AppFonts.w400s20.copyWith(color: AppColors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
