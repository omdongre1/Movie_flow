pub contract MoviesContract {
    pub var Movies: {String: Movie}
    
    pub struct Movie {
        pub let Title: String
        pub let ReleaseYear: Int
        pub let Genre: String
        pub let Rating: Int

        init(_Title: String, _ReleaseYear: Int, _Genre: String, _Rating: Int) {
            self.Title = _Title
            self.ReleaseYear = _ReleaseYear
            self.Genre = _Genre
            self.Rating = _Rating
        }
    }

    pub fun addMovie(Title: String, ReleaseYear: Int, Genre: String, Rating: Int) {
        let newMovie = Movie(_Title: Title, _ReleaseYear: ReleaseYear, _Genre: Genre, _Rating: Rating)
        self.Movies[Title] = newMovie
    }
    
    init() {
        self.Movies = {}
    }
}
