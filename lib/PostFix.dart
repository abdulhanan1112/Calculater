import 'package:flutter/material.dart';


class PostFix {

  int preference(String a) {
    if (a == '/' || a == '*' || a == '%') return 2;
    if (a == '+' || a == '-') return 1;
    return 0;
  }

  bool isHigherPreference(String a, String b) {
    return preference(a) >= preference(b);
  }

  int eval(String postfix) {
    List<int> stack = [];

    for (int i = 0; i < postfix.length; i++) {
      String ch = postfix[i];

      if (ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57) {
        stack.add((ch.codeUnitAt(0) - 48));
      } else {
        int op2 = stack.removeLast();
        int op1 = stack.removeLast();

        switch (ch) {
          case '*':
            stack.add(op1 * op2);
            break;
          case '/':
            stack.add(op1 ~/ op2);
            break;
          case '+':
            stack.add(op1 + op2);
            break;
          case '-':
            stack.add(op1 - op2);
            break;
          case '%':
            stack.add(op1 % op2);
            break;
        }
      }
    }

    return stack.last;
  }

  String postfix(String input) {
    StringBuffer output = StringBuffer();
    List<String> stack = [];

    for (int i = 0; i < input.length; i++) {
      String ch = input[i];

      if (ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57) {
        output.write(ch);
      } else {
        while (stack.isNotEmpty &&
            isHigherPreference(stack.last, ch)) {
          output.write(stack.removeLast());
        }
        stack.add(ch);
      }
    }

    while (stack.isNotEmpty) {
      output.write(stack.removeLast());
    }
    return output.toString();
  }
}
