abstract class FoodState {}
class FoodInitialState extends FoodState {}


class GetFoodLoadingState extends FoodState {}
class GetFoodSuccessState extends FoodState {}
class GetFoodErrorState extends FoodState {}


class GetPizzaLoadingState extends FoodState {}
class GetPizzaSuccessState extends FoodState {}
class GetPizzaErrorState extends FoodState {}

class GetSaladsLoadingState extends FoodState {}
class GetSaladsSuccessState extends FoodState {}
class GetSaladsErrorState extends FoodState {}

class GetBeveragesLoadingState extends FoodState {}
class GetBeveragesSuccessState extends FoodState {}
class GetBeveragesErrorState extends FoodState {}

class GetSnacksLoadingState extends FoodState {}
class GetSnacksSuccessState extends FoodState {}
class GetSnacksErrorState extends FoodState {}

class CounterAIncrementState extends FoodState {}
class CounterDecrementState extends FoodState {}
class CalculatePriceState extends FoodState {}


class GetItemSuccessState extends FoodState {}//wishlist
class GetItemErrorState extends FoodState {}
class GetItemLoadingState extends FoodState {}

class AddItemSuccessState extends FoodState {}
class AddItemErrorState extends FoodState {}


class DeleteItemLoadingState extends FoodState {}
class DeleteItemSuccessState extends FoodState {}
class DeleteItemErrorState extends FoodState {}