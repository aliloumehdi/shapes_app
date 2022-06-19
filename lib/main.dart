

import 'package:shapes_app/model/Circle.model.dart';
import 'package:shapes_app/model/GeometricDesign.model.dart';
import 'package:shapes_app/model/Point.model.dart';
import 'package:shapes_app/model/Rectangle.model.dart';

void main() {
   Point p=new Point(x:20.2,y:45);
    Point p2=new Point.fromArray([54.2,45]);
  //
  // print(p.distanceTo(p2).toStringAsFixed(2));
  // print(p.toJson());
  // Point p3=new Point.fromJson({'x':10.0,'y':12.2});
  // print(p3.toString());
  // Circle c=new Circle(p1: p, p2: p2);
  Point point1 = const Point(x: 12, y: 90);
  Point point2 = const Point(x: 12, y: 90);
  print(point1.toString());
  print(point2.toString());
  print(point1.toJson());
  print(identical(point2, point1));
  Point point3 = Point.fromArray([5, 34]);
  print(point3);
  Rectangle rect1=Rectangle(p1: point1, p2: point2);
  Circle circle=Circle(p1: p, p2: p2);
  GeometricDesign gd=new GeometricDesign();
  gd.add(circle);
  gd.add(rect1);
  gd.save("geometric1.json");
}
