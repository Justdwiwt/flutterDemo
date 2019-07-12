printDate(String str) {
  print('success! res: ' + '$str');
}

main() {
  String date = DateTime.now().toString();
  printDate(date);
}
