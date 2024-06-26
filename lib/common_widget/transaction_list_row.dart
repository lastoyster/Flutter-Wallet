import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class TransactionListRow extends StatelessWidget {
  const TransactionListRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFD4CEFE),
            offset: Offset(0, 7),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffFFE5F3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: TColor.primary,
                  size: 25,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Buying Blue Dress",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xff5C5C5C),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "6/5/2021 4:20pm",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xff5C5C5C),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "-54\$",
                maxLines: 1,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: const [
                    Icon(
                      Icons.wallet_giftcard_outlined,
                      color: TColor.primary,
                      size: 25,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Tejarat",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xff5C5C5C),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: const [
                    Icon(
                      Icons.person_outline,
                      color: TColor.primary,
                      size: 25,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Ali",
                      maxLines: 1,
                      style: TextStyle(
                        color: Color(0xff5C5C5C),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 8,
            children: [
              {"name": "Buying dress"},
              {"name": "Wedding"},
              {"name": "Fun"},
            ].map((jObj) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: const Color(0xffEFEEFC),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  jObj["name"].toString(),
                  maxLines: 1,
                  style: const TextStyle(
                    color: Color(0xff5C5C5C),
                    fontSize: 15,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
