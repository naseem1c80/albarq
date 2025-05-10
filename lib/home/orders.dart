// ignore: deprecated_member_use
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class OrdersPage extends StatelessWidget {
  final List<Map<String, String>> orders = [
    {
      'orderId': 'A1001',
      'customer': 'علي أحمد',
      'time': '3:45 م',
      'status': 'قيد التوصيل',
    },
    {
      'orderId': 'A1002',
      'customer': 'منى محمد',
      'time': '4:10 م',
      'status': 'تم التوصيل',
    },
    {
      'orderId': 'A1003',
      'customer': 'خالد سالم',
      'time': '5:00 م',
      'status': 'قيد الإعداد',
    },
  ];

  // OrdersPage({super.key});

  Color getStatusColor(String status) {
    switch (status) {
      case 'قيد التوصيل':
        return Colors.orange;
      case 'تم التوصيل':
        return Colors.green;
      case 'قيد الإعداد':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  IconData getStatusIcon(String status) {
    switch (status) {
      case 'قيد التوصيل':
        return Icons.delivery_dining;
      case 'تم التوصيل':
        return Icons.check_circle;
      case 'قيد الإعداد':
        return Icons.kitchen;
      default:
        return Icons.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            final statusColor = getStatusColor(order['status']!);
            final statusIcon = getStatusIcon(order['status']!);

            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: CircleAvatar(
                  radius: 25,

                  // ignore: deprecated_member_use
                  backgroundColor: statusColor.withOpacity(0.2),
                  child: Icon(statusIcon, color: statusColor),
                ),
                title: Text(
                  order['customer']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("رقم الطلب: ${order['orderId']}"),
                      Text("الوقت: ${order['time']}"),
                      Text(
                        "الحالة: ${order['status']}",
                        style: TextStyle(color: statusColor),
                      ),
                    ],
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 18),
                onTap: () {
                  // تفاصيل الطلب
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
