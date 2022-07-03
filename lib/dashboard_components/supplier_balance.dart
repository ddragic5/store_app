import 'package:flutter/material.dart';
import 'package:multi_store_app/widgets/appbar_widgets.dart';

class SupplierBalance extends StatelessWidget {
  const SupplierBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Supplier Balance'),
        leading: const AppBarBackButton(),
      ),
    );
  }
}
