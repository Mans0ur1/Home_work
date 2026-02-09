/*Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.*/

class Movie {
  String title;
  double rating;
  Movie(this.title, this.rating);
}

void main() {
  Movie movie1 = Movie('Mister x', 2.5);
  Movie movie2 = Movie('Whiplash', 9.5);
  Movie movie3 = Movie('klaus', 9.5);
  Movie movie4= Movie('Inception', 8.8);
  List<Movie> movies = [movie1, movie2, movie3,movie4];
  for (int i = 0; i < movies.length; i++) {
    if (movies[i].rating > 7) {
      print('${movies[i].title} : ${movies[i].rating}');
    }
  }
}
