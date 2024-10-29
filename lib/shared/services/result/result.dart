abstract class Result<T> {
  const Result();

  factory Result.success(T value) = Success<T>;
  factory Result.failure(String e) = Failure<T>;

  R when<R>({
    required R Function(T value) success,
    required R Function(String e) failure,
  });

  Future<R> futureWhen<R>({
    required Future<R> Function(T value) success,
    required Future<R> Function(String e) failure,
  });

  Result<R> map<R>(R Function(T value) transform);
}

class Success<T> extends Result<T> {
  final T value;
  const Success(this.value);

  @override
  R when<R>({
    required R Function(T value) success,
    required R Function(String e) failure,
  }) {
    return success(value);
  }

  @override
  Future<R> futureWhen<R>({
    required Future<R> Function(T value) success,
    required Future<R> Function(String e) failure,
  }) async {
    return await success(value);
  }

  @override
  Result<R> map<R>(R Function(T value) transform) {
    return Success(transform(value));
  }
}

class Failure<T> extends Result<T> {
  final String error;
  const Failure(this.error);

  @override
  R when<R>({
    required R Function(T value) success,
    required R Function(String e) failure,
  }) {
    return failure(error);
  }

  @override
  Future<R> futureWhen<R>({
    required Future<R> Function(T value) success,
    required Future<R> Function(String e) failure,
  }) async {
    return await failure(error);
  }

  @override
  Result<R> map<R>(R Function(T value) transform) {
    return Failure(error);
  }
}
