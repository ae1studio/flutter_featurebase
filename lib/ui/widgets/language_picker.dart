part of featurebase;

class _LanguagePickerWidget extends StatelessWidget {
  final Locale locale;
  final List<String> availableLocales;
  final Function(Locale) onLocaleChange;
  final Color primaryColor;
  final Color textColor;
  const _LanguagePickerWidget({
    required this.locale,
    required this.availableLocales,
    required this.onLocaleChange,
    required this.primaryColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: locale,
      items: availableLocales.map((e) {
        Locale tempLocale = Locale(e);

        return DropdownMenuItem<Locale>(
          value: Locale(e),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  _getLocale(tempLocale).toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: locale == tempLocale ? primaryColor : textColor,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              Text(
                _langCodeToName(tempLocale),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: locale == tempLocale ? primaryColor : textColor,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
        );
      }).toList(),
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textColor,
        fontFamily: 'Inter',
      ),
      borderRadius: BorderRadius.circular(8),
      dropdownColor: Theme.of(context).cardColor,
      onChanged: (newLocale) {
        if (newLocale != null) {
          Navigator.pop(context);
          onLocaleChange(newLocale);
        }
      },
    );
  }
}
