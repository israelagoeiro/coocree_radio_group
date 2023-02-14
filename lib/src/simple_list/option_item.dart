class OptionItem<T> {
  final String label;
  final T value;

  OptionItem({required this.label, required this.value});

  @override
  String toString() {
    return 'Instance of OptionItem(name:$label, value:$value)';
  }
}