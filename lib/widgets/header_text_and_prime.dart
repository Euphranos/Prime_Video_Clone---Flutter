// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HeaderTextWithPrimeButton extends StatelessWidget {
  final String text;
  const HeaderTextWithPrimeButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Text(
                "Prime ",
                style: TextStyle(
                    color: primeColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 21),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 300,
              child: RichText(
                maxLines: 3,
                text: TextSpan(children: [
                  TextSpan(
                    text: text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.bottom,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 23,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
