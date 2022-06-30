import 'package:flutter/material.dart';

class Service {
  final String title;
  final String description;
  final IconData icon;

  const Service({
    required this.title,
    required this.description,
    required this.icon,
  });
}

List<Service> services = [
  const Service(
    title: 'Web Design',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.laptop_chromebook,
  ),
  const Service(
    title: 'Marketing',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.stacked_bar_chart,
  ),
  const Service(
    title: 'Graphics',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.graphic_eq_outlined,
  ),
  const Service(
    title: 'Data Analysis',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.network_ping,
  ),
  const Service(
    title: 'App Development',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.app_registration,
  ),
  const Service(
    title: 'Accounting',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.account_balance,
  ),
  const Service(
    title: 'Payroll',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.paypal_rounded,
  ),
  const Service(
    title: 'networking',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    icon: Icons.network_cell_outlined,
  ),
];
