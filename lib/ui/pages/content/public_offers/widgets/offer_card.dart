import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:red_egresados/ui/widgets/card.dart';

class OfferCard extends StatelessWidget {
  final String title, content, arch, level;
  final int payment;
  final VoidCallback onCopy, onApply;
  // offerCard constructor
  const OfferCard({
    Key? key,
    required this.title,
    required this.content,
    required this.arch,
    required this.level,
    required this.payment,
    required this.onCopy,
    required this.onApply,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCard(
      title: title,
      content: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      topRightWidget: IconButton(
        icon: const Icon(
          Icons.copy_outlined,
          color: Colors.blue,
        ),
        onPressed: onCopy,
      ),
    );
  }
}
