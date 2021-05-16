import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name, explain, benefit;
  final Widget picture;

  Product({
    this.id,
    this.name,
    this.picture,
    this.explain,
    this.benefit,
});

}

List<Product> products = [
  Product(
    id: 11,
    name: '닥터-포르테',
    picture: Image.asset("assets/images/porte.png"),
    explain: '은나노 향균제',
    benefit: "무항생제 및 대장균에 대한 향균력 향상",
  ),
  Product(
    id: 12,
    name: '닥터-포르테',
    picture: Image.asset("assets/images/porte.png"),
    explain: '은나노 향균제',
    benefit: "무항생제 및 대장균에 대한 향균력 향상",
  ),
  Product(
    id: 21,
    name: '칼시탑',
    picture: Image.asset("assets/images/calcitop.png"),
    explain: '액상 이온화 칼슘제',
    benefit: "분말 칼슘 대비 흡수력 향상",
  ),
  Product(
    id: 22,
    name: '칼시탑',
    picture: Image.asset("assets/images/calcitop.png"),
    explain: '액상 이온화 칼슘제',
    benefit: "분말 칼슘 대비 흡수력 향상",
  ),
  Product(
    id: 31,
    name: '에코',
    picture: Image.asset("assets/images/echosol.png"),
    explain: '친환경 어쩌',
    benefit: "걍 좋음",
  ),  Product(
    id: 32,
    name: '에코',
    picture: Image.asset("assets/images/echosol.png"),
    explain: '친환경 어쩌',
    benefit: "걍 좋음",
  ),
];