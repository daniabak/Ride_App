// ignore_for_file: public_member_api_docs, sort_constructors_first


class ResultModel {}

class SuccessResult extends ResultModel {
  final String message;
  SuccessResult({
    required this.message,
  });
}

class ErrorsResult extends ResultModel {
  final String message;

  ErrorsResult(this.message);
}

class ExceptionResult extends ResultModel {
  final String message;

  ExceptionResult({required this.message});
}

class ListOf<T> extends ResultModel {
  List<T> resutl;
  ListOf({
    required this.resutl,
  });
}
