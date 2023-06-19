import 'dart:math';
import 'dart:typed_data';

import 'Point.dart';

class Chapter_III_about_variables {
// https://dart.dev/language/variables

  void koan_play_with_variables() {
    var name = 'Voyager I';
    //name  = 1977; //A value of type 'int' can't be assigned to a variable of type 'String'
    var antennaDiameter = 3.7;
    var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
    var image = {
      'tags': ['saturn'],
      'url': '//path/to/saturn.jpg'
    };
    assert(true, "Well Done");
  }

  void koan_play_with_object() {
    Object name = 'Bob';
    assert(name is String, "Well Done");
    assert(name is Object, "Well Done");
    name = 123;
    print(name.runtimeType);
    assert(name is int, "Well Done");
    String specificType = "hello";
    //specificType = name;   //A value of type 'Object' can't be assigned to a variable of type 'String'
  }

  void koan_play_with_nullable() {
    String? name = "hello the world !";
    var res = name.split(" ");
    name = null;
    var res2 = name?.split(" ");
    print(res);

    name = "hi";
    String nonNUllString = "test";
    nonNUllString = name!;

    int? lineCount;
    assert(lineCount == null);
  }

  void koan_variable_default_value() {
    int lineCount;
    var weLikeToCount = true;
    if (weLikeToCount) {
      lineCount = countLines();
    } else {
      lineCount = 0;
    }
    print(lineCount);  //Dart can detect that lineCount is non-null by the time it’s passed to print()
  }

  int countLines()  => 5;

  late String lateVariable;
  void koan_late_variable() {
    lateVariable = 'Feijoada!';
    print(lateVariable);
  }

  String readThermometer() {
    print("!!!! very coast function !!!!");
    assert(false);
    return "37.2°";
  }

  void koan_lazy_initialized() {
    late String temperature = readThermometer(); // Lazily initialized.
    //print(temperature);
  }

  void koan_const_final() {
    final name = 'Bob';
    //name = 'Bobi';   // error  in compilation

    const nickname = "Bobi";
    //nickname = "BOB"; // error in compilation

    var foo = const [];
    final bar = const [];
    const baz = []; // Equivalent to `const []`
    const test = const []; //redundant use of const

    //foo[0] = "hi";   // error at runtime
    //bar[0] = "hi";   // error at runtime
    foo = [1, 2, 3];   // it works!!!
    // You can change the value of a non-final,
    // non-const variable, even if it used to have a const value:

    //bar = [1,2,3];   //error: The final variable 'bar' can only be set once.
    //baz = [];        //error: Constant variables can't be assigned a value.
  }


  void koan_define_const_and_type_check() {
    const Object i = 3; // Where i is a const Object with an int value...
    const list = [i as int]; // Use a typecast.
    //var list = [i as int]; // try with this declaration....

    const map = {if (i is int) i: 'int'}; // Use is and collection if.
    const set = {if (list is List<int>) ...list}; // ...and a spread.

    print(map);
    print(set);
  }



  void koan_final_const_object() {
    final PointMutable myObj = PointMutable(2,2);
    myObj.x = 1;

    const PointImmutable myObj2 = PointImmutable(2,2);
    // myObj2.x = 1;   //error at compil, 'x' can't be used as a setter because it's final.
  }

}