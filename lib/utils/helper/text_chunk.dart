class Helper {
  List<String> chunkText(String text, int chunkSize) {
    List<String> chunks = [];
    for (int i = 0; i < text.length; i += chunkSize) {
      chunks.add(text.substring(
          i, i + chunkSize > text.length ? text.length : i + chunkSize));
    }
    return chunks;
  }
}
