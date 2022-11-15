extension DoubleLetterExtension on double {
  String get convertToLetter {
    if (this >= 98.0) {
      return "A+";
    } else if (this >= 92 && this < 98.0) {
      return "A";
    } else if (this >= 89.5 && this < 92) {
      return "A-";
    } else if (this >= 88 && this < 89.5) {
      return "B+";
    } else if (this >= 82 && this < 88.0) {
      return "B";
    } else if (this > 79.5 && this < 82) {
      return "B-";
    } else if (this >= 78 && this < 79.5) {
      return "C+";
    } else if (this >= 72 && this < 78) {
      return "C";
    } else if (this > 69.5 && this < 72) {
      return "C-";
    } else if (this >= 60 && this < 69.5) {
      return "D";
    } else {
      return "F";
    }
  }
}
