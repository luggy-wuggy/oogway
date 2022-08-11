extension MapExtensions<K, V> on Map<K, V> {
  /// Look up the value of [key], or throw an assertion error if it isn't there.
  V get(K key) {
    final value = this[key];
    assert(value != null);

    return value!;
  }
}
