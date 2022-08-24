import 'package:flutter/material.dart';

class ShortCutWidget extends StatelessWidget {
  const ShortCutWidget({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: SizedBox(
              width: 68,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
