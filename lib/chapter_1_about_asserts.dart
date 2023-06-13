/// This is the first Chapter About Asserts
/// it contains all tests to solve to learn Dart Asserts
class Chapter_I_asserts {
  dynamic your_answer = null;

  void koan_about_asserts() {
    assert(true == true, "Hint: Change false to true");
  }

  /// Should learn how to use our tests
  void koan_compare_values_with_each_other() {
    var expectedValue = 0;
    var realValue = 0 + 0;

    assert(realValue == expectedValue,
        'Hint: The expectedValue seems to be wrong');
  }

  void koan_also_type_is_important() {
    /// This is a variable it can store all kinds of data
    /// by just initialize it with the *var* keyword
    var expectedValue = '2';

    /// You can also be precise and enter the type of the variable before
    int realValue = 1 + 1;

    /// Hint: Is a string a number?
    assert('${realValue}' == expectedValue);
  }

  void koan_enter_values_to_succeed() {
    your_answer = "Congratulations!";
    assert(your_answer == 'Congratulations!');
  }
}
