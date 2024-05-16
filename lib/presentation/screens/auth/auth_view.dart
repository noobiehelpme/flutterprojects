import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/auth/auth_bloc.dart';
import 'package:gauthentication/presentation/widgets/auth_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: HexColor('#DBDCF1'),
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.loginSuccessOrNot.fold(
              () {},
              (a) => a.fold(
                (l) => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(l.message))),
                (r) => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('LOgin Success'))),
              ),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello Again !",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.inriaSans().fontFamily,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Text(
                      "Welcome back you've ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 22,
                          fontFamily: GoogleFonts.inriaSans().fontFamily),
                    ),
                  ),
                  Text(
                    "been missed",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        fontFamily: GoogleFonts.inriaSans().fontFamily),
                  ),
                  const SizedBox(height: 40, width: 150),
                  const AuthTextField(label: "user name"),
                  const SizedBox(height: 40, width: 150),
                  const AuthTextField(
                    label: "password",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      child: const Text('Recovery Password'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                        height: 40,
                        width: 400,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: GoogleFonts.inriaSans().fontFamily),
                          ),
                          onPressed: () {},
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: SizedBox(
                      width: 250,
                      height: 40,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (!state.isLoading) {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.userLogin());
                          }
                        },
                        label: Text(
                          state.isLoading ? '' : 'Sign in With Google',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontFamily: GoogleFonts.montserrat().fontFamily,
                              fontWeight: FontWeight.bold),
                        ),
                        icon: state.isLoading
                            ? SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: HexColor('6D5BF7'),
                                  strokeWidth: 2,
                                ),
                              )
                            : Image.asset(
                                'images/google.png',
                                height: 30,
                                width: 30,
                              ),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: state.isLoading
                                ? Colors.white54
                                : Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
