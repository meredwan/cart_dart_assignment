import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cart_assignment/screen/widget/cart_widget.dart';
import 'package:my_cart_assignment/screen/widget/check_out.dart';
import 'package:my_cart_assignment/utils/custom_colors.dart';
import 'package:my_cart_assignment/utils/custom_text.dart';
import 'package:my_cart_assignment/utils/data.dart';
import 'package:my_cart_assignment/utils/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(
                    fontSize: 30,
                    color: AppColor.contentColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              // cart_widget(),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return cart_widget(
                        item: cartItems[index],
                        onRemove: () {
                          if (cartItems[index].quantity != 1) {
                            setState(() {
                              cartItems[index].quantity--;
                            });
                          }
                        },
                        onAdd: () {
                          setState(() {
                            cartItems[index].quantity++;
                          });
                        });
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingTwo(data: "Total"),
                  Text(
                    " ${cartItems.length > 1 ? cartItems.map<double>((e) => e.quantity * e.product.price).reduce((value1, value2) => value2 + value2) : cartItems[1].product.price * cartItems[1].product.price}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              check_out()
            ],
          ),
        ),
      ),
    );
  }
}

class result {
  var sum1 = cartItems.length * cartItems[0].product.price;
  var sum2 = cartItems.length * cartItems[1].product.price;
  var sum3 = cartItems.length * cartItems[2].product.price;
}
