import 'package:flutter/material.dart';
import 'package:dental_clinic/authentication_screen/patient_login.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Dental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const PatientLogin(),
    ),
  );
}
