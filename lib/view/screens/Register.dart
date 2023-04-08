import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/constants/colors.dart';
import 'package:graz_project/controllers/user_data_controller.dart';
import 'package:graz_project/view/screens/Likable_gender.dart';
import 'package:graz_project/view/screens/Login.dart';
import 'package:page_transition/page_transition.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _ageController =
      TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login-bg2.png'),
                fit: BoxFit.cover,
              ),
            ),

          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                  Colors.black.withOpacity(.95),
                  Colors.black,
                ] 
              )
            ),
            ),
          ),
          
          
          _isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 170,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const SizedBox(),
                              Text(
                                'Glad , Register !',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.bold,
                                  color: Ascolors,
                                  fontSize: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              const SizedBox(),
                              Text(
                                'And Manage your music with beavert ',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w100,
                                  color: Ascolors,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.w100,
                                color: Ascolors,
                                fontSize: 20,
                              ),
                              controller: _nameController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: TextStyle(color: Colors.white),
                                focusColor: Ascolors,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Full name is required';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.w100,
                                color: Ascolors,
                                fontSize: 20,
                              ),
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white),
                                focusColor: Ascolors,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email is required';
                                }
                                if (!value.contains('@')) {
                                  return 'Invalid email format';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.w100,
                                color: Ascolors,
                                fontSize: 20,
                              ),
                              controller: _passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white),
                                focusColor: Ascolors,
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.w100,
                                color: Ascolors,
                                fontSize: 20,
                              ),
                              controller: _ageController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                focusColor: Ascolors,
                                border: InputBorder.none,
                                labelText: 'Age',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Age is required';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: TextFormField(
                              style: GoogleFonts.alata(
                                fontWeight: FontWeight.w100,
                                color: Ascolors,
                                fontSize: 20,
                              ),
                              controller: _genderController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                focusColor: Ascolors,
                                border: InputBorder.none,
                                labelText: 'Gender',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Gender is required';
                                }
                                if (value.trim().toLowerCase() != "male" && value.trim().toLowerCase() != "female") {
                                  return 'Enter Valid Gender';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            if (!_formKey.currentState!.validate()) return;
                            _submitForm();
                            Navigator.pushReplacement(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: LikeGender_screen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                'Register',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const SizedBox(),
                              Text(
                                'Already a member ?',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w100,
                                  color: Ascolors,
                                  fontSize: 20,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      child: LoginForm(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    'Login',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w100,
                                      color: Colors.blue,
                                      fontSize: 20,
                                    ),
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
              ),]
      ),
    );
  }

  void _submitForm() {
    
    final userDataController = UserDataController();

    userDataController.setEmail(_emailController.text.trim());
    userDataController.setAge(_ageController.text.trim());
    userDataController.setGender(_genderController.text.trim().toLowerCase());
    userDataController.setUserName(_nameController.text.trim());
    UserDataController.mainPassword = _passwordController.text.trim();

    print(UserDataController.userData.value.toJson());
  }
}
