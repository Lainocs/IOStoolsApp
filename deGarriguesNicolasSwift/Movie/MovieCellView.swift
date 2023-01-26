//
//  MovieCellView.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import SwiftUI

struct MovieCellView: View {
    
    let movie: Movie
    
    var body: some View {
        VStack(spacing: 50) {
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500\(movie.poster)")) {image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Rectangle()
                    .foregroundColor(.gray)
            }
            .frame(width: 200, height: 300)
            .clipped()
            .cornerRadius(15)
            
            HStack {
                Text(movie.title)
                    .font(.title)
                    .bold()
                Spacer()
            }
            Text(movie.description)
        }
        .padding()
        .foregroundColor(.white)
    }
}

struct MovieCellView_Previews: PreviewProvider {
    
    static let previewFilm = Movie(
        title: "Fight Club",
        description: "Pourvu d'une situation des plus enviable, un jeune homme à bout de nerfs retrouve un équilibre relatif en compagnie de Marla, rencontrée dans un groupe d'entraide. Il fait également la connaissance de Tyler Durden, personnage enthousiaste et charismatique. Ensemble, ils fondent le Fight Club, où ils organisent des combats clandestins et violents, destinés à évacuer l'énergie négative de chacun.",
        rating: 8.4,
        poster: "/"
    )
    
    static var previews: some View {
        MovieCellView(movie: previewFilm)
            .background(.black)
    }
}
