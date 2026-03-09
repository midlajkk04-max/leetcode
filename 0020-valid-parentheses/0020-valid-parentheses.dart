class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
        String char = s[i];

        if (char == "(") {
            stack.add(")");
        }
        else if (char == "{") {
            stack.add("}");
        }
        else if (char == "[") {
            stack.add("]");
        }
        else if (stack.isEmpty || char != stack.removeLast()) {
            return false;
        }
    }
    return stack.isEmpty; 
  }
}