import 'package:flutter/material.dart';
import 'package:service_section/components/services_section.dart';
import 'package:service_section/components/top_section.dart';

class ServiceSectionScreen extends StatefulWidget {
  const ServiceSectionScreen({Key? key}) : super(key: key);

  @override
  State<ServiceSectionScreen> createState() => _ServiceSectionScreenState();
}

class _ServiceSectionScreenState extends State<ServiceSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            TopSection(),
            ServicesSection(),
          ],
        ),
      ),
    );
  }
}
