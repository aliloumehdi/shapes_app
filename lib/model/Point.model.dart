
import 'dart:math';

class Point{
  final double x;
  final double y;

  const Point({ required this.x, required this.y});
  Point.fromArray(List<double> data) :    x=data[0],y=data[1];
  Point.fromJson(Map<String,dynamic>data):x=data['x'],y=data['y'];
  @override
  String toString() {
    // TODO: implement toString
    return "Point ($x,$y)";
  }
  double distanceTo(Point p){

    double W=x - p.x;
    double H=y - p.y;
return sqrt(W*W+H*H);
  }
  Map<String,dynamic>? toJson(){
return {'x':x,'y':y};
}
// Point(this._x,this._y);
// get x  => _x;
// get y  => _y;
// set y(double y)=> _y=y;
// set x(x)=> _x=x;


}