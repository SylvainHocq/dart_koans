import 'dart:math';
import 'dart:typed_data';

import 'package:dart_koans/Point.dart';

import 'assert.dart';

class Chapter_IV_about_operators {
// https://dart.dev/language/operators

  dynamic your_answer = null;

  void koan_arithmetic_operators() {
    assert(2 + 3 == 5);
    assert(2 - 3 == -1);
    assert(2 * 3 == 6);
    assert(5 / 2 == 2.5); // Result is a double
    assert(5 ~/ 2 == 2); // Result is an int
    assert(5 % 2 == 1); // Remainder

    assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
  }

  void koan_operator_precedence() {
    int a;
    int b;

    //TODO: replace <your_answer> with true or false or something else...

    a = 0;
    b = ++a; // Increment a before b gets its value.
    assert(true == (a == b)); // 1 == 1

    a = 0;
    b = a++; // Increment a after b gets its value.
    assert(a == 1);
    assert(b == 0);
    assert(true == (a != b)); // 1 != 0

    a = 0;
    b = --a; // Decrement a before b gets its value.
    assert(a == -1);
    assert(b == -1);
    assert(true == (a == b)); // -1 == -1

    a = 0;
    b = a--; // Decrement a after b gets its value.
    assert(a == -1);
    assert(b == 0);
    assert(true == (a != b)); // -1 != 0
  }

  // https://dart.dev/language/operators#equality-and-relational-operators
  void koan_Equality_and_relational_operators() {
    assert((2 == 2) == true);
    assert((2 != 3) == true);
    assert((3 > 2) == true);
    assert((2 < 3) == true);
    assert((3 >= 3) == true);
    assert((2 <= 3) == true);
    var a = Point(1, 1);
    var b = Point(1, 1);
    assert((a == b) == true);
    assert(identical(a, b) == false, "bouuuu");
    assert(identical(a, a) == true);
    }

    void koan_Type_test_operators() {
      Object point = PointMutable(1,2);
      //point.x = 2;   //Compilation error: The setter 'x' isn't defined for the type 'Object'.
      assert(true == true, "Does the code line under compile? ");

      (point as PointMutable).x = 2;
      assert(true == true, "Does the code line under compile? ");

      if (point is PointMutable) {
        point.x = 2;
      }
    }

    //https://dart.dev/language/operators#assignment-operators
    void koan_Assignment_operators() {
      String? b;

      b??= "hello";
      assert((b == "hello") == true);

      b??="hello world";
      assert((b == "hello world") == false);

      var a = 2; // Assign using =
      a *= 3; // Assign and multiply: a = a * 3
      assert(a == 6);
    }

    /** https://dart.dev/language/operators#conditional-expressions */
    void koan_Conditional_expressions() {

      String playerName(String? name) => name ?? 'Guest';

      String? name = null;
      assert(playerName(name) == "Guest");
      name = "Bobi";
      assert(playerName(name) == "Bobi");
    }



    //https://dart.dev/language/operators#cascade-notation
    void koan_Cascade_notation() {
      // try to initalize paint with cascade notion
      var paint = Paint()
         ..color = "black"
         ..strokeWidth = 5;
       assert(paint.color == "black");
       assert(paint.strokeWidth == 5);
    }
}

class Paint {
  String? color;
  int? strokeWidth;
}