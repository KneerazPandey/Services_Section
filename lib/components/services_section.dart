import 'package:flutter/material.dart';
import 'package:service_section/components/service_item.dart';
import 'package:service_section/models/service.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: width >= 1200 ? 150 : 100,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: width >= 1200
              ? 4
              : width < 1200 && width > 900
                  ? 3
                  : width < 668
                      ? 1
                      : 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: width >= 1200
              ? 1.56
              : width < 1200 && width > 900
                  ? 1.41
                  : width < 668
                      ? 1.2
                      : 1.3,
        ),
        shrinkWrap: true,
        itemCount: services.length,
        itemBuilder: (BuildContext context, int index) {
          return ServiceItem(
            service: services[index],
            index: index,
          );
        },
      ),
    );
  }
}
