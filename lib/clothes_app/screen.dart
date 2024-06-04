import 'package:flutter/material.dart';
import 'package:home_work/clothes_app/clothes.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Clothes> clothes = [
      Clothes(
        name: 'Prom 2024',
        type: 'Вечернее',
        size: 'M',
        color: 'Фиолетовый',
        price: 29.99,
        image: 'assets/dress4.webp',
      ),
      Clothes(
        name: 'Cocktail dress',
        type: 'А-силуэт',
        size: 'XS',
        color: 'Красный',
        price: 49.99,
        image: 'assets/dress5.webp',
      ),
      Clothes(
        name: 'Grace Collection',
        type: 'Кружево',
        size: 'S',
        color: 'Черный',
        price: 39.99,
        image: 'assets/dress3.webp',
      ),
      Clothes(
        name: 'Jacket',
        type: 'Пиджак',
        size: 'XS',
        color: 'Красный',
        price: 50.99,
        image: 'assets/dress.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Магазин одежды'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.75,
        ),
        itemCount: clothes.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    clothes[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        clothes[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                          '${clothes[index].type} - ${clothes[index].color} - ${clothes[index].size}'),
                      Text('\$${clothes[index].price.toStringAsFixed(2)}'),
                    ],
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
