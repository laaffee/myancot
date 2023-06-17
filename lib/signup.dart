import 'package:flutter/material.dart';
import 'package:myancotfix/classes/fadeanimation.dart';
import 'package:myancotfix/classes/hex_color.dart';
import 'package:myancotfix/login.dart';

enum FormData { Name, Phone, Email, Gender, password, ConfirmPassword }

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Color enabled = Colors.white;
  Color enabledtxt = Colors.grey.shade500;
  Color deaible = Colors.grey.shade500;
  Color backgroundColor = Colors.grey.shade300;
  bool ispasswordev = true;

  FormData? selected;

  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  void signUpUser() {
    String name = nameController.text.trim();
    String phone = phoneController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    // Validate the form input data
    if (name.isEmpty ||
        phone.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      // Show an error message if any field is empty
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Kesalahan'),
            content: Text('Isi format dengan lengkap'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return;
    }

    // Perform signup logic here
    // Add your code to create a new user account or call an API for signup

    // Show success message after successful signup
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Berhasil'),
          content: Text('Pendaftaran berhasil.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context); // Navigate back to the previous screen
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              HexColor("#FF8E4F").withOpacity(0.3),
              HexColor("#FF8E4F").withOpacity(0.4),
              HexColor("#A4BE7B").withOpacity(0.4),
              HexColor("#A4BE7B").withOpacity(0.3),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 5,
                  color: Colors.grey.shade200,
                  child: Container(
                    width: 400,
                    padding: EdgeInsets.all(40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FadeAnimation(
                          delay: 0.8,
                          child: Image.asset(
                            "images/Myancot.png",
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        FadeAnimation(
                          delay: 0.9,
                          child: Text(
                            "Daftar",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        FadeAnimation(
                          delay: 1,
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              labelText: "Nama Lengkap",
                              labelStyle: TextStyle(color: enabledtxt),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        FadeAnimation(
                          delay: 1.1,
                          child: TextFormField(
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: "Nomor Handphone",
                              labelStyle: TextStyle(color: enabledtxt),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        FadeAnimation(
                          delay: 1.2,
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(color: enabledtxt),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        FadeAnimation(
                          delay: 1.3,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: ispasswordev,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(color: enabledtxt),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ispasswordev = !ispasswordev;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        FadeAnimation(
                          delay: 1.4,
                          child: TextFormField(
                            controller: confirmPasswordController,
                            obscureText: ispasswordev,
                            decoration: InputDecoration(
                              labelText: "Konfirmasi Password",
                              labelStyle: TextStyle(color: enabledtxt),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: enabled),
                              ),
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ispasswordev = !ispasswordev;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        FadeAnimation(
                          delay: 1.5,
                          child: TextButton(
                            onPressed: signUpUser,
                            child: Text(
                              "Daftar",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 0.5,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: HexColor("#FF8E4F"),
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 80.0,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        FadeAnimation(
                          delay: 1.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sudah punya akun?",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Masuk",
                                  style: TextStyle(
                                    color: HexColor("#A4BE7B"),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
