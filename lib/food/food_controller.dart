import 'food_model.dart';
import 'food_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final String domainAddress =
    'https://delivery-b89e9-default-rtdb.firebaseio.com';

class FoodController extends Cubit<FoodState> {
  FoodController() : super(FoodInitialState()) {
    initialState();
    // getFood();
    // getPizza();
    // getSalads();
    // getBeverages();
    // getSnacks();
    // // getWishlist();
    // ItemDecrement();
    // ItemIncrement();
  }

  void initialState() async {
    await getFood();
    await getPizza();
    await getSalads();
    await getBeverages();
    await getSnacks();
    await getWishlist();
  }

  List<FoodModel> _allfood = [];
  List<FoodModel> get alllfood => _allfood;
  List<FoodModel> _allpizza = [];
  List<FoodModel> get alllpizza => _allpizza;
  List<FoodModel> _allsalads = [];
  List<FoodModel> get alllsalads => _allsalads;
  List<FoodModel> _allbeverages = [];
  List<FoodModel> get alllbeverages => _allbeverages;
  List<FoodModel> _allsnacks = [];
  List<FoodModel> get alllsnacks => _allsnacks;
  List<FoodModel> _wishlistbuy = [];
  List<FoodModel> get wishlistItem => _wishlistbuy;
  Future<void> getFood() async {
    emit(GetFoodLoadingState());
    try {
      http.Response res = await http.get(Uri.parse('$domainAddress/eat.json'));
      Map data = json.decode(res.body);
      if (res.statusCode == 200) {
        _allfood.clear();
        data.forEach((key, value) {
          FoodModel food = FoodModel.fromJson(key, value);
          _allfood.add(food);
          emit(GetFoodSuccessState());
        });
      } else {
        emit(GetFoodErrorState());
      }
    } catch (e) {
      emit(GetFoodErrorState());
    }
  }

  Future<void> getPizza() async {
    emit(GetPizzaLoadingState());
    try {
      http.Response res = await http.get(Uri.parse('$domainAddress/eat.json'));
      Map data = json.decode(res.body);
      if (res.statusCode == 200) {
        _allpizza.clear();
        _allpizza.clear();
        data.forEach((key, value) {
          if (value['pizza'] == true) {
            _allpizza.add(FoodModel.fromJson(key, value));
          }
        });
        emit(GetPizzaSuccessState());
      } else {
        emit(GetPizzaErrorState());
      }
    } catch (e) {
      emit(GetPizzaErrorState());
    }
  }

  Future<void> getSalads() async {
    emit(GetSaladsLoadingState());
    try {
      http.Response res = await http.get(Uri.parse('$domainAddress/eat.json'));
      Map data = json.decode(res.body);
      if (res.statusCode == 200) {
        _allsalads.clear();
        _allsalads.clear();
        data.forEach((key, value) {
          if (value['salads'] == true) {
            _allsalads.add(FoodModel.fromJson(key, value));
          }
        });
        emit(GetSaladsSuccessState());
      } else {
        emit(GetSaladsErrorState());
      }
    } catch (e) {
      emit(GetSaladsErrorState());
    }
  }

  Future<void> getBeverages() async {
    emit(GetBeveragesLoadingState());
    try {
      http.Response res = await http.get(Uri.parse('$domainAddress/eat.json'));
      Map data = json.decode(res.body);
      if (res.statusCode == 200) {
        _allbeverages.clear();
        _allbeverages.clear();
        data.forEach((key, value) {
          if (value['beverages'] == true) {
            _allbeverages.add(FoodModel.fromJson(key, value));
          }
        });
        emit(GetBeveragesSuccessState());
      } else {
        emit(GetBeveragesErrorState());
      }
    } catch (e) {
      emit(GetBeveragesErrorState());
    }
  }

  Future<void> getSnacks() async {
    emit(GetSnacksLoadingState());
    try {
      http.Response res = await http.get(Uri.parse('$domainAddress/eat.json'));
      Map data = json.decode(res.body);
      if (res.statusCode == 200) {
        _allsnacks.clear();
        _allsnacks.clear();

        data.forEach((key, value) {
          if (value['snacks'] == true) {
            _allsnacks.add(FoodModel.fromJson(key, value));
          }
        });
        emit(GetSnacksSuccessState());
      } else {
        emit(GetSnacksErrorState());
      }
    } catch (e) {
      emit(GetSnacksErrorState());
    }
  }

  int numberEat = 0;
  num totalPrice = 0;

  void ItemIncrement() {
    numberEat += 1;
    emit(CounterAIncrementState());
  }

  void ItemDecrement() {
    numberEat -= 1;
    emit(CounterDecrementState());
  }

  void CalculatePrice(FoodModel fo) {
    totalPrice = 0;
    totalPrice = numberEat * (fo.price);
    emit(CalculatePriceState());
  }

  Future<void> getWishlist() async {
    emit(GetItemLoadingState());
    try {
      http.Response res =
          await http.get(Uri.parse('$domainAddress/wishlist.json'));
      Map data = json.decode(res.body);
      if (res.statusCode == 200) {
        List<String> ids = [];
        data.forEach((key, value) {
          ids.add(value['foodId']);
        });
        for (FoodModel eat in _allfood) {
          for (String id in ids) {
            if (id == eat.id) {
              print(id == eat.id);
              _wishlistbuy.add(eat);
            }
            break;
          }
        }
        emit(GetItemSuccessState());
      } else {
        emit(GetItemErrorState());
      }
    } catch (e) {
      emit(GetItemErrorState());
    }
  }
  // Future<void> getWishlist() async {
  //   emit(GetItemLoadingState());
  //   try {
  //     http.Response res =
  //         await http.get(Uri.parse('$domainAddress/wishlist.json'));
  //     Map data = json.decode(res.body);
  //     if (res.statusCode == 200) {
  //       data.forEach((key, value) {
          
  //         for (FoodModel eat in _allfood) {
  //           print('object');
  //           if (value['foodId'] == eat.id) {
  //              print('objeeeeeeeeeeeeeeeeeeeect');
  //             _wishlistbuy.add(eat);
  //           }
  //           break;
  //         }
  //       });
  //       emit(GetItemSuccessState());
  //     } else {
  //       emit(GetItemErrorState());
  //     }
  //   } catch (e) {
  //     emit(GetItemErrorState());
  //   }
  // }

  Future<bool> addToWishlist(FoodModel eat) async {
    try {
      Map sendData = {
        'foodId': eat.id,
      };
      http.Response res = await http.post(
          Uri.parse('$domainAddress/wishlist.json'),
          body: json.encode(sendData));
      if (res.statusCode == 200) {
        Map data = json.decode(res.body);
        eat.wishlistid = data['name'];
        _wishlistbuy.add(eat);
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> deleteWishlist() async {
    emit(DeleteItemLoadingState());

    try {
      http.Response res =
          await http.delete(Uri.parse('$domainAddress/wishlist/.json'));
      if (res.statusCode == 200) {
        for (int i = 0; i < _wishlistbuy.length; i++) {
          //  if (food.id == _wishlistbuy[i].id) {
          _wishlistbuy.removeAt(i);
          break;
          // }
        }

        emit(DeleteItemSuccessState());
      } else {
        emit(DeleteItemErrorState());
      }
    } catch (e) {
      emit(DeleteItemErrorState());
    }
  }
}
