class TopRatedShowsModel {
  TopRatedShowsModel({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });
  late final num page;
  late final List<Results> results;
  late final num totalPages;
  late final num totalResults;

  TopRatedShowsModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    results = List.from(json['results']).map((e) => Results.fromJson(e)).toList();
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
}

class Results {
  Results({
    this.backdropPath,
    required this.firstAirDate,
    required this.genreIds,
    required this.id,
    required this.title,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.voteAverage,
    required this.voteCount,
  });
  late final String? backdropPath;
  late final String firstAirDate;
  late final List<num> genreIds;
  late final num id;
  late final String title;
  late final List<String> originCountry;
  late final String originalLanguage;
  late final String originalName;
  late final String overview;
  late final num popularity;
  late final String posterPath;
  late final num? voteAverage;
  late final num voteCount;

  Results.fromJson(Map<String, dynamic> json) {
    backdropPath = null;
    firstAirDate = json['first_air_date'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    title = json['name'];
    originCountry = List.castFrom<dynamic, String>(json['origin_country']);
    originalLanguage = json['original_language'];
    originalName = json['original_name'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
}
