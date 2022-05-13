import 'package:reto_2/models/modelo.dart';

class CarModel extends BaseModel {
  int? id;
  int year = 0;
  String brand = "";
  String line = "";
  double sellingPrice = 0;
  String description = "";
  double qualification = 0;
  String image = "";
  bool isSelected = false;

  CarModel(this.id, this.brand, this.line, this.year, this.sellingPrice,
      this.description, this.qualification, this.image, this.isSelected) {
    
  }

  int get getYear => year;
  int? get getId => id;
  String get getBrand => brand;
  String get getLine => line;
  double get getSellingPrice => sellingPrice;
  String get getDescription => description;
  double get getQualification => qualification;
  String get getImage => image;
  bool get getIsSelected => isSelected;

  setYear(int value) {
    year = value;
    
    notifyListeners();
  }

  setQualification(double value) {
    qualification = value;
   
    notifyListeners();
  }

 

}
