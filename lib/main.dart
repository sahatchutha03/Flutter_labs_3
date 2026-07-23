import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: FoodListPage()));

class FoodListPage extends StatelessWidget {
  const FoodListPage({super.key});

  final List<Map<String, String>> foods = const [
    {'name': 'ข้าวกะเพราหมูสับไข่ดาว', 'price': '60'},
    {'name': 'ผัดไทยกุ้งสด', 'price': '75'},
    {'name': 'ข้าวผัดปู', 'price': '80'},
    {'name': 'ต้มยำกุ้งน้ำข้น', 'price': '150'},
    {'name': 'ส้มตำไทย', 'price': '50'},
    {'name': 'ข้าวเหนียวมะม่วง', 'price': '100'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เมนูอาหาร')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: foods.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, i) {
          final f = foods[i];
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 159, 86, 228),
                    child: const Icon(Icons.restaurant, size: 48),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    f['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  child: Text(
                    '฿${f['price']}',
                    style: const TextStyle(color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
