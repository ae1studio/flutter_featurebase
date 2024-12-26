part of featurebase;

String _pascalToKebabIcon(String pascal) {
  // Remove 'Icon' suffix
  var withoutIcon = pascal.replaceAll('Icon', '');

  // Add hyphens before capital letters and convert to lowercase
  return withoutIcon
      .replaceAllMapped(
          RegExp(r'[A-Z0-9]'), (match) => '-${match.group(0)?.toLowerCase()}')
      .substring(1); // Remove the first hyphen
}
