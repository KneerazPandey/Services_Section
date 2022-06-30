import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_section/controllers/controller.dart';
import 'package:service_section/models/service.dart';

class ServiceItem extends StatelessWidget {
  final Service service;
  final int index;
  const ServiceItem({
    Key? key,
    required this.service,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onHover: (value) {
          if (value) {
            servicesController.setHoverServices(index);
          } else {
            servicesController.setHoverServices(0.5);
          }
        },
        onTap: () {},
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: servicesController.hoverServices == index
                ? const Color(0xFF303ef7)
                : Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                service.icon,
                color: servicesController.hoverServices == index
                    ? Colors.white
                    : const Color(0xFF303ef7),
                size: 50,
              ),
              const SizedBox(height: 5),
              Text(
                service.title,
                style: GoogleFonts.acme(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: servicesController.hoverServices == index
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                service.description,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  color: servicesController.hoverServices == index
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
