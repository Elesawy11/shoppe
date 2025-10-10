import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

class CustomQuantityWidget extends StatefulWidget {
  const CustomQuantityWidget({super.key});

  @override
  State<CustomQuantityWidget> createState() => _CustomQuantityWidgetState();
}

class _CustomQuantityWidgetState extends State<CustomQuantityWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.setMinSize(8)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.setMinSize(20)),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (quantity > 1) {
                setState(() {
                  quantity--;
                });
              }
            },
            icon: Icon(Icons.remove, size: context.setMinSize(20)),
          ),
          Text("$quantity", style: TextStyle(fontSize: context.setSp(16))),
          IconButton(
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
            icon: Icon(Icons.add, size: context.setMinSize(20)),
          ),
        ],
      ),
    );
  }
}
