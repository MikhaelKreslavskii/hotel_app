import 'package:flutter/material.dart';

class BookingPriceTile extends StatelessWidget {
  final String nameField;
  final String descriptionField;
  const BookingPriceTile({required this.nameField, required this.descriptionField});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
            child: Container(
              ///width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$nameField",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF',
                        color: Color.fromARGB(255, 130, 135, 150)),
                  ),
                 /// SizedBox(width: 50,),
                  SizedBox(
                    width: 103,
                    child: Text(
                      "$descriptionField",
                      style: TextStyle(fontFamily: 'SF', fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}