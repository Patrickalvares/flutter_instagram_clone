import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/resources/auth_methods.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';
import 'package:flutter_instagram_clone/widgets/test_field_input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Flexible(flex: 2, child: Container()),
          SvgPicture.asset(
            "lib/assets/ic_instagram.svg",
            // ignore: deprecated_member_use
            color: primaryColor,
            height: 64,
          ),
          const SizedBox(height: 64),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
              ),
              Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo),
                  ))
            ],
          ),
          const SizedBox(height: 24),
          TextFieldInput(
            textEditingController: _usernameController,
            hintText: 'Qual o seu Nome',
            textInputType: TextInputType.text,
          ),
          const SizedBox(height: 24),
          TextFieldInput(
            textEditingController: _emailController,
            hintText: 'Entre com seu E-mail',
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 24),
          TextFieldInput(
            textEditingController: _passwordController,
            hintText: 'Entre com sua Senha',
            textInputType: TextInputType.text,
            isPass: true,
          ),
          const SizedBox(height: 24),
          TextFieldInput(
            textEditingController: _bioController,
            hintText: 'Escreva sua biografia',
            textInputType: TextInputType.text,
          ),
          const SizedBox(height: 24),
          InkWell(
            onTap: () async {
              String res = await AuthMethods().signUpUser(
                email: _emailController.text,
                password: _passwordController.text,
                username: _usernameController.text,
                bio: _bioController.text,
              );
              print(res);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                color: blueColor,
              ),
              child: const Text('Entrar'),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Flexible(flex: 2, child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text('Ainda não possui conta? '),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text(
                    'Cadastre-se',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
