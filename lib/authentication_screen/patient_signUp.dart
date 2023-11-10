import 'package:flutter/material.dart';
import 'package:dental_clinic/widget/custom_widget.dart';
import 'package:dental_clinic/const/strings.dart';
import 'package:dental_clinic/const/constants.dart';

class PatientSignUp extends StatefulWidget {
  const PatientSignUp({super.key});

  @override
  State<PatientSignUp> createState() {
    return _PatientSignUpState();
  }
}

class _PatientSignUpState extends State<PatientSignUp> {
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
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage(patientImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Patients Sign Up...",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
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
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 1,
                              ),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ourTextfield(
                                    title: "Confirm Password",
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Colors.grey.shade800,
                                    ),
                                    hintText: "Re-enter the Password",
                                  ),
                                  const SizedBox(
                                    height: 20,
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
                                  signUp,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
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
                                      builder: (context) => const DoctorLogin(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  asDoctor,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(21, 101, 192, 1),
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Color.fromRGBO(21, 101, 192, 1),
                                    decorationThickness: 3,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    haveAccount,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
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
                                      login,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF263238),
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Color.fromRGBO(21, 101, 192, 1),
                                        decorationThickness: 3,
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
                                      builder: (context) => const AdminLogin(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  asAdmin,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Color.fromRGBO(21, 101, 192, 1),
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Color.fromRGBO(21, 101, 192, 1),
                                    decorationThickness: 3,
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
