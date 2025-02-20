Future<String> hello(String) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hello, World!';
    // throw Error();
    return Future.error(Exception("loading"));
  });
}

void main() {
  hello("Zaky")
  // .onError((error, StackTrace) => "404")
  .then((value) => print(value));
  // .catchError((error) => print("Error with msg ${error.message}"));

  print(100);
}
