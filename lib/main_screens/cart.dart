import 'package:flutter/material.dart';
import 'package:multi_store_app/main_screens/customer_home.dart';
import 'package:multi_store_app/widgets/appbar_widgets.dart';

import '../widgets/yellow_button.dart';

class CartScreen extends StatefulWidget {
  final Widget? back;
  const CartScreen({Key? key, this.back}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: widget.back,
            elevation: 0,
            backgroundColor: Colors.white,
            title: const AppBarTitle(title: 'Cart'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_forever,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Cart is empty! ',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.6,
                      onPressed: () {
                        Navigator.canPop(context)
                            ? Navigator.pop(context)
                            : Navigator.pushReplacementNamed(
                                context, '/customer_home');
                      },
                      child: const Text(
                        'continue shopping',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Total: \$ ',
                      style: TextStyle(fontSize: 19),
                    ),
                    Text(
                      '00.00',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
                YellowButton(
                  width: 0.45,
                  label: 'CHECK OUT',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
