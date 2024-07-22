class StringFormatter {
  static String numberOf(int number, String entityName) {
    if (number > 1) {
      entityName += "s";
    }
    return "$number $entityName";
  }
}
