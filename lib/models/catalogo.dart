import 'package:reto_2/models/carmodel.dart';
import 'package:reto_2/models/modelo.dart';

class Catalog extends BaseModel {
  List<CarModel> cars = [];
  CarModel carSelected = new CarModel(0, "", "", 0, 0, "", 0, "", false);

  Catalog() {
    cars.add(CarModel(3, "toyota", "txl", 2021, 204000000, "Descripción", 3,
        "../images/0.png", false));
    cars.add(CarModel(4, "logan ", "familiar", 2022, 34000000, "Descripción", 2,
        "../images/1.png", false));
  }

  List<CarModel> get getCatalog => cars;
  CarModel get getCarSelected {
    notifyListeners();
    return carSelected;
  }

  setCarSelected(CarModel car) {
    carSelected = car;
    notifyListeners();
  }

  List<CarModel> getCarsByBrand(String brand) {
    List<CarModel> filteredCars = [];
    for (var car in cars) {
      if (car.brand == brand) {
        filteredCars.add(car);
      }
    }
    return filteredCars;
  }
}
