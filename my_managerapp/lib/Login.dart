import 'package:flutter/material.dart';
import 'package:my_managerapp/HomePage.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  bool _isUsernameValid = false;
  bool _isPasswordValid = false;
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_validateUsername);
    _passwordController.addListener(_validatePassword);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _validateUsername() {
    setState(() {
      String enteredUsername = _usernameController.text.trim();
      _isUsernameValid =
          enteredUsername.isNotEmpty && enteredUsername == 'suba';
    });
  }

  void _validatePassword() {
    setState(() {
      String enteredPassword = _passwordController.text.trim();
      _isPasswordValid =
          enteredPassword.isNotEmpty && enteredPassword == 'password123';
    });
  }

  void _login() {
    if (_isUsernameValid && _isPasswordValid) {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Incorrect Username or Password'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 220,
                  child: Stack(children: [
                    Positioned(
                        left: 260,
                        top: 100,
                        child: Image.asset('lib/assets/images/Ellipse_7.png')),
                    Positioned(
                        left: 250,
                        top: 1,
                        //bottom: 83,
                        //right: -6.67,
                        child: Image.asset('lib/assets/images/Ellipse_6.png')),
                    Positioned(
                        left: 250,
                        top: 110,
                        child: Image.asset('lib/assets/images/cross.png')),
                    Positioned(
                        left: 80,
                        top: 97,
                        child: Image.asset('lib/assets/images/circle.png')),
                    Positioned(
                        left: 62,
                        top: 177,
                        child: Image.asset('lib/assets/images/Path_121.png')),
                    Positioned(
                        left: 95,
                        top: 140,
                        child: Image.asset('lib/assets/images/Path_122.png')),
                    Positioned(
                        left: 60,
                        top: 158,
                        child: Image.asset('lib/assets/images/Path_123.png')),
                    Positioned(
                        left: 60,
                        top: 140,
                        child: Image.asset('lib/assets/images/Path_124.png')),
                  ]),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 40),
                        const Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Let’s see Construction Expense Manager',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: _usernameController,
                          focusNode: _usernameFocus,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: _usernameFocus.hasFocus
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            suffixIcon: _isUsernameValid
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.green,
                                  )
                                : const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: _passwordController,
                          focusNode: _passwordFocus,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: _passwordFocus.hasFocus
                                    ? Colors.blue
                                    : Colors.grey,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            suffixIcon: _isPasswordValid
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.green,
                                  )
                                : const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  ),
                          ),
                          obscureText: !_isPasswordVisible,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: _rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      _rememberMe = value ?? false;
                                      _isPasswordVisible = _rememberMe;
                                    });
                                  },
                                ),
                                const Text(
                                  'Remember Me',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: const Size(150, 50),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
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

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    routes: {
      HomePage.routeName: (context) => HomePage(),
    },
  ));
}
