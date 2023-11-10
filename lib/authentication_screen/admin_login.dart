import 'package:flutter/material.dart';
import 'package:dental_clinic/widget/custom_widget.dart';
import 'package:dental_clinic/const/strings.dart';
import 'package:dental_clinic/const/constants.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() {
    return _AdminLoginState();
  }
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: width,
                color: Colors.pink.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 160,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage(doctorImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Admin Login...",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 160,
                right: 0,
                bottom: 0,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            child: SizedBox(
                              height: 220,
                              child: Column(
                                children: [
                                  ourTextfield(
                                    title: "Email",
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.grey.shade800,
                                    ),
                                    hintText: "Enter the Email",
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ourTextfield(
                                    title: "Password",
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Colors.grey.shade800,
                                    ),
                                    hintText: "Enter the Password",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 60,
                            color: Colors.pink.shade300,
                            child: TextButton(
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  login,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              forgetPassword,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF263238),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const PatientLogin(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  asPatient,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF263238),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  const Text(dontHaveAccount),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text(
                                      signUp,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xFF263238),
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const DoctorLogin(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  asDoctor,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF263238),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
