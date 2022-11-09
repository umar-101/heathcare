class ThemeDatabase {
  final String title, imageUrl, subtitle;
  final List<String> bulletPoints;
  final String buttonTitle;
  final String iconUrl;
  final List<String> themeColors;

  ThemeDatabase(
      {required this.title,
      required this.imageUrl,
      required this.subtitle,
      required this.bulletPoints,
      required this.buttonTitle,
      required this.iconUrl,
      required this.themeColors});

  List<ThemeDatabase> databases = [
    ThemeDatabase(
      title: 'Good Evening Taylor',
      imageUrl: 'sd',
      subtitle: 'Your Nighttime Routine',
      bulletPoints: ['Stop alcohol', 'Wind down electronics', 'CBT lesson'],
      buttonTitle: 'It’s almost 11:30 PM - time to get ready for bed!',
      iconUrl: 'a',
      themeColors: ['a'],
    ),
    ThemeDatabase(
      title: 'Good Morning Taylor',
      imageUrl: 'sd',
      subtitle: 'Your Nighttime Routine',
      bulletPoints: ['Stop alcohol', 'Wind down electronics', 'CBT lesson'],
      buttonTitle: 'It’s almost 11:30 PM - time to get ready for bed!',
      iconUrl: 'a',
      themeColors: ['a'],
    ),
  ];
}
