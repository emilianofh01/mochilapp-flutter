abstract class Validator<T> {
  T value;
  Validator(this.value);

  T getValue() => value;

  void setValue(T value) => this.value = value;
  bool isValid();
}
