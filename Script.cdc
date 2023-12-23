import MoviesContract from 0x05

pub fun main(Title: String): MoviesContract.Movie{
    return MoviesContract.Movies[Title]!
}
