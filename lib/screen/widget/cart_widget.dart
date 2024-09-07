import 'package:flutter/material.dart';
import 'package:my_cart_assignment/utils/custom_colors.dart';
import 'package:my_cart_assignment/utils/custom_text.dart';
import 'package:my_cart_assignment/utils/data.dart';

class cart_widget extends StatelessWidget {
  final CartItem item;
  final Function() onRemove;
  final Function() onAdd;
  const cart_widget({
    super.key,
    required this.item,
    required this.onRemove,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColor.primeryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 0.5,
              offset: Offset(1, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              item.product.image,
              width: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingTwo(
                    data: item.product.title, fontWeight: FontWeight.bold),
                HeadingTwo(data: item.product.description),
                const SizedBox(
                  height: 8,
                ),
                HeadingTwo(
                    data: item.product.price.toString(),
                    fontWeight: FontWeight.bold)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: onRemove,
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                HeadingTwo(data: item.quantity.toString()),
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: onAdd,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
