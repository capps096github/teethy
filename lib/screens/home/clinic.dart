import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clinic extends StatelessWidget {
  final String clinicName;
  final String clinicDescription;
  final String clinicLocation;
  final String clinicPhoto;

  const Clinic({
    required this.clinicLocation,
    required this.clinicDescription,
    required this.clinicName,
    required this.clinicPhoto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: GestureDetector(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(clinicPhoto,
                                  fit: BoxFit.fill, width: 100, height: 100),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              clinicName,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Text(
                        clinicLocation + " " + clinicDescription,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
