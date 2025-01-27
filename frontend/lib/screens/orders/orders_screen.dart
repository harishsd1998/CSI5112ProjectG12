import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/maindrawer.dart';
import '../../providers/orders.dart' show Orders;
import './order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
      ),
      drawer: const MainDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}
