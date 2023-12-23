import MoviesContract from 0x05

transaction(Title: String, ReleaseYear: Int, Genre: String, Rating: Int) {

  prepare(signer: AuthAccount) {}

  execute {
    MoviesContract.addMovie(Title: Title, ReleaseYear: ReleaseYear, Genre: Genre, Rating: Rating)
    log("movie added")
  }
}
