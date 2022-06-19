import 'dart:convert';
import 'dart:io';

import 'package:shapes_app/model/Circle.model.dart';
import 'package:shapes_app/model/Point.model.dart';
import 'package:shapes_app/model/Rectangle.model.dart';
import 'package:shapes_app/model/Shape.model.dart';

class GeometricDesign {
  List<Shape> shapes = [];

  GeometricDesign() {}

  Shape add(Shape shape) {
    shapes.add(shape);
    return shape;
  }

  String toJson() {
    JsonEncoder jsonEncoder = JsonEncoder.withIndent(" ");
    return jsonEncoder.convert({"shapes": shapes});
  }

  void save(String fileName) {
    File file = File(fileName);
    file.writeAsStringSync(toJson());
  }

  void show(){
    print("********* Geometric Design Start *********** ");
    for(Shape shape in shapes) {
      if(shape is Circle) {
        print("========== Circle Start ============");
        print(shape.toJson());
        print("Radius :${shape.getRadius()}");
      } else if(shape is Rectangle) {
        print("========== Rectangle Start ============");
        print(shape.toJson());
        print("Width :${shape.getWidth()}");
        print("Height :${shape.getHeight()}");
      }
      print("Area :${shape.getArea()}");
      print("Perimeter :${shape.getPerimeter()}");
      print("========= Shape End ==============");
    }
  }
  GeometricDesign.fromFile(String fileName){

    File file=File(fileName);
    String data=file.readAsStringSync();
    dynamic dataObject=json.decode(data);
    List<Shape> dataShapes =
    (dataObject['shapes'] as List).map((shape){
      if(shape['type']=='Circle'){
        Point p1=Point.fromJson(shape['center']);
        double radius=shape['radius'];
        Point p2=Point(x: p1.x+radius, y: p1.y);
        return Circle(p1: p1, p2: p2);
      } else {
        Point p1=Point(x: shape['x'], y: shape['y']);
        double W=shape['width'];
        double H=shape['height'];
        Point p2=Point(x: p1.x+W, y: p1.y+H);
        return Rectangle(p1: p1, p2: p2);
      }
    }
    ).toList();
    shapes=dataShapes;
  }
}
