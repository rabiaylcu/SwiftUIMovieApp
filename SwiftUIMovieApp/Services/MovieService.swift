//
//  MovieService.swift
//  SwiftUIMovieApp
//
//  Created by Rabia Yolcu on 12.08.2024.
//

import Foundation

protocol MovieService{
    
    func fetchMovies(from endpoint : MovieListEndpoint, completion: @escaping(Result<MovieResponse, MovieError>) -> ())
    func fetchMovie(id: Int, completion: @escaping(Result<Movie, MovieError>) -> ())
    func searchMovie(query: String, completion: @escaping(Result<MovieResponse, MovieError>) -> ())
    
}

enum MovieListEndpoint: String, CaseIterable{
    case nowPlaying = "now_playing"
    case topRated = "top_rated"
    case popular
    case upcoming
    
    var description: String{
        switch self {
        case .nowPlaying:
            return "Now Playing"
        case .topRated:
            return "Top Rated"
        case .popular:
            return "Popular"
        case .upcoming:
            return "Upcoming"
        }
        
    }
    
}

enum MovieError: Error, CustomNSError{
    
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serializationError
    
    var localizedDescription: String{
        
        switch self {
        case .apiError:
            return "Failed to fetch data"
        case .invalidEndpoint:
            return "Invalid endpoint"
        case .invalidResponse:
            return "Invalid response"
        case .noData:
            return "No data"
        case .serializationError:
            return "Failed to decode data"
        }
        
    }
    
    var errorUserInfo: [String : Any]{
        [NSLocalizedDescriptionKey : localizedDescription]
    }
    
 }
