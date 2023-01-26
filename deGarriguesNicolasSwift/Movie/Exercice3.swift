//
//  Exercice3.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import SwiftUI

struct Exercice3: View {
    
    @State var loadedMovie: Movie? = nil
    
    var body: some View {
        ScrollView {
            VStack {
                
                if loadedMovie != nil {
                    MovieCellView(movie: loadedMovie!)
                } else {
                    Text("Chargement...")
                        .foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .onAppear(
            perform: {
                loadData()
            }
        )
        .background(.black)
    }

    func loadData() {
        Task.init {
            let url = URL(string: "https://api.themoviedb.org/3/movie/671?api_key=\(apiKey)&language=fr-FR")!

            do {
                let (data, response) = try await URLSession.shared.data(from: url)
                let jsonDecoder = JSONDecoder()

                let movie = try jsonDecoder.decode(Movie.self, from: data)
                
                self.loadedMovie = movie
            } catch {
                print("❌")
                print(error)
                print("❌")
            }
        }
    }
}

struct Exercice3_Previews: PreviewProvider {
    
    static var previews: some View {
        Exercice3()
            .background(.black)
    }
}
