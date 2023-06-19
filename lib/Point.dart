class PointMutable<T extends num> {
  T x;
  T y;
  PointMutable(T x, T y)
      : this.x = x,
        this.y = y;
}

class PointImmutable<T extends num> {
  final T x;
  final T y;

  /// Creates a point with the provided [x] and [y] coordinates.
  const PointImmutable(T x, T y)
      : this.x = x,
        this.y = y;

  String toString() => 'Point($x, $y)';
}