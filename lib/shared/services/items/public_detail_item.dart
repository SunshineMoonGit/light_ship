class PublicDetailItem {
  final String svg;
  final String category;
  final String? value;

  const PublicDetailItem({
    required this.svg,
    required this.category,
    required this.value,
  });

  @override
  String toString() => 'DetailItem(svg: $svg, value: $value)';
}
