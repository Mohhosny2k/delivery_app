import 'package:flutter/material.dart';

class FoodModel {
  bool beverages;
  num carbs;
  String description;
  num fats;
  num grams;
  dynamic image;
  num kcal;
  String nameFood;
  bool pizza;
  num price;
  num proteins;
  bool salads;
  bool snacks;
  String id;
  //num qty;
//dynamic select;
String wishlistid;

  FoodModel({
    required this.beverages,
    required this.carbs,
    required this.description,
    required this.fats,
    required this.grams,
    required this.image,
    required this.kcal,
    required this.nameFood,
    required this.pizza,
    required this.price,
    required this.proteins,
    required this.salads,
    required this.snacks,
    required this.id,
   //required this.qty,
  // required this.select,
  required this.wishlistid
  });

  factory FoodModel.fromJson(String id, Map data) {
    return FoodModel(
        beverages: data['beverages'],
        carbs: data['carbs'],
        description: data['description'],
        fats: data['fats'],
        grams: data['grams'],
        image: data['image'],
        kcal: data['kcal'],
        nameFood: data['nameFood'],
        pizza: data['pizza'],
        price: data['price'],
        proteins: data['proteins'],
        salads: data['salads'],
        snacks: data['snacks'],
       // qty:data['qty'] ,
       // select: data['select'],
        wishlistid: '',
        id: id);
  }
}
