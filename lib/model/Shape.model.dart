import 'package:shapes_app/model/Point.model.dart';

abstract class Shape{
   final  Point p1;
    final  Point p2;
      Shape( { required this.p1, required this.p2} );
      double getPerimeter();
   double getArea();
   Map<String,dynamic> toJson();
}