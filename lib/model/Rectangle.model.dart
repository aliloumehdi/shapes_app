import 'package:shapes_app/model/Point.model.dart';
import 'package:shapes_app/model/Shape.model.dart';

class Rectangle extends Shape{
  Rectangle({required Point p1,required Point p2}):super(p1: p1,p2: p2);

  @override
  double getArea() {
    return getWidth()*getHeight();
  }

  @override
  double getPerimeter() {

    return 2*(getWidth()+getHeight());
  }

  @override
  Map<String, dynamic> toJson() {
    return {'type': 'Rectangle' , 'x':p1.x, 'y':p1.y, 'width':getWidth(),'height':getHeight()};
  }

  double getWidth(){
    return (p1.x-p2.x).abs();
  }
  double getHeight(){
    return (p1.y-p2.y).abs();
  }

}