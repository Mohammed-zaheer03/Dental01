import 'package:flutter/material.dart';

SizedBox ourTextfield(
      {required String title,
      required Icon prefixIcon,
      required String hintText,
      bool obscureText = false,}) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          const SizedBox(height: 5,),
          SizedBox(
            height: 60,
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade900,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(
                    color: Colors.pink.shade300,
                    width: 2,
                  ),
                ),
                prefixIcon: prefixIcon,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
