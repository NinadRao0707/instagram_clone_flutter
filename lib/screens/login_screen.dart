import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/resources/auth_methods.dart';
import 'package:instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone/responsive/responsive_layout.dart';
import 'package:instagram_clone/responsive/web_screen_layout.dart';
import 'package:instagram_clone/screens/phone_or_email_screen.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/utils.dart';
import 'package:instagram_clone/widgets/text_field_input.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });

    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (res != "Success") {
      showSnackBar(res, context);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout(),
          ),
        ),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 44,
            ),

            // Language selector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "English",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "(United States)",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.expand_more,
                  color: Color(0xff616161),
                ),
              ],
            ),

            const SizedBox(
              height: 157,
            ),

            // SVG Image
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              color: primaryColor,
              height: 54,
            ),

            const SizedBox(
              height: 37,
            ),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Text field input for email
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    child: TextFieldInput(
                      hintText: 'Phone number, email or username',
                      textInputType: TextInputType.emailAddress,
                      textEditingController: _emailController,
                    ),
                  ),

                  const SizedBox(
                    height: 19,
                  ),

                  // Text field input for password
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    child: TextFieldInput(
                      hintText: 'Password',
                      textInputType: TextInputType.text,
                      textEditingController: _passwordController,
                      isPass: true,
                    ),
                  ),

                  const SizedBox(
                    height: 19,
                  ),

                  // Button Login
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                    ),
                    child: InkWell(
                      onTap: loginUser,
                      child: Container(
                        child: _isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: primaryColor,
                                ),
                              )
                            : const Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          vertical: 17,
                        ),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            color: blueColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            // Transitioning to signing up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                    "Forgot your login details? ",
                    style: TextStyle(
                      color: Color(0xff616161),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: const Text(
                      "Get help logging in.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "────────────────",
                  style: TextStyle(
                    color: Color(0xff616161),
                  ),
                ),
                SizedBox(
                  width: 7.0,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    color: Color(0xff616161),
                    fontSize: 17.5,
                  ),
                ),
                SizedBox(
                  width: 7.0,
                ),
                Text(
                  "────────────────",
                  style: TextStyle(
                    color: Color(0xff616161),
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 27,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Log in with Facebook",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 130,
            ),

            const Divider(
              thickness: 1,
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color(0xff616161),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PhoneOrEmail()),
                    );
                  },
                  child: Container(
                    child: const Text(
                      "Sign up.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
