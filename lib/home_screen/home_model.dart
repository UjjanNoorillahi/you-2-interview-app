// Define a class for Podcast
class Podcast {
  final String title;
  final String publisher;
  final String imageUrl;

  Podcast({
    required this.title,
    required this.publisher,
    required this.imageUrl,
  });
}

// Define a class for LivePodcast
class LivePodcast {
  final String title;
  final String description;
  final String imageUrl;
  final String category;
  final double listeners;

  LivePodcast({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.listeners,
  });
}

// Sample data for Top Podcasts
List<Podcast> topPodcasts = [
  Podcast(
    title: 'Dateline NBC',
    publisher: 'NBC News',
    imageUrl: 'assets/icons/ben_icon.png',
  ),
  Podcast(
    title: 'Crime Junkie',
    publisher: 'Audiochuck',
    imageUrl: 'assets/icons/crimejunkie_icon.png',
  ),
  Podcast(
    title: 'The Ben Shapiro',
    publisher: 'The Daily Wire',
    imageUrl: 'assets/icons/dareline_icon.png',
  ),
  // Podcast(
  //   title: 'Dateline NBC',
  //   publisher: 'NBC News',
  //   imageUrl: 'assets/icons/ben_icon.png',
  // ),
  // Podcast(
  //   title: 'Crime Junkie',
  //   publisher: 'Audiochuck',
  //   imageUrl: 'assets/icons/crimejunkie_icon.png',
  // ),
  // Podcast(
  //   title: 'The Ben Shapiro Show',
  //   publisher: 'The Daily Wire',
  //   imageUrl: 'assets/icons/dareline_icon.png',
  // ),
];

// Sample data for Live Podcasts
List<LivePodcast> livePodcasts = [
  LivePodcast(
    title: 'The Prosecutors',
    description: 'Lorem Ipsum Is Simply Dummy',
    imageUrl: 'assets/icons/live1.png',
    category: 'Life',
    listeners: 78.2,
  ),
  LivePodcast(
    title: 'The Mel Robbins Podcast',
    description: 'Lorem Ipsum Is Simply Dummy',
    imageUrl: 'assets/icons/live2.png',
    category: 'Life',
    listeners: 78.2,
  ),
  LivePodcast(
    title: 'Smokin\' & Grillin\' wit AB',
    description: 'Lorem Ipsum Is Simply Dummy',
    imageUrl: 'assets/icons/live3.png',
    category: 'Life',
    listeners: 78.2,
  ),
];
