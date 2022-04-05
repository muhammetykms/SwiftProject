//
//  DetayView.swift
//  filmKitabi
//
//  Created by muhammet on 3.04.2022.
//

import SwiftUI

struct DetayView: View {
    let imdbId : String
    
    @ObservedObject var filmDetayViewMode = FilmDetayViewModel()
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            HStack{
                Spacer()
            OzelImage(url: filmDetayViewMode.filmDetayi?.poster ?? "")
                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                Spacer()
            }
                
            Text(filmDetayViewMode.filmDetayi?.title ?? "Film İsmi Gösterilecek")
                .foregroundColor(.blue)
                .font(.largeTitle)
                .bold()
                .padding()
            
            Text("imdb Score: \(filmDetayViewMode.filmDetayi?.imdbRating ?? "imdb Gösterilecek ") ")
                .bold()
                .padding()
                
            
            Text(filmDetayViewMode.filmDetayi?.plot ?? "Film Plotu Gösterilecek")
                
                .padding()
            
            
            Text("Minute: \(filmDetayViewMode.filmDetayi?.runtime ?? "dakika Gösterilecek ") ")
                .padding()
            
            Text("Actors: \(filmDetayViewMode.filmDetayi?.actors ?? "Oyuncu Gösterilecek ") ")
                .padding()
            
            
            Text("Year Of Construction: \(filmDetayViewMode.filmDetayi?.released ?? "Yıl Gösterilecek ") ")
                
                .padding()
            
            
            
        }.onAppear {
            self.filmDetayViewMode.filmDetayiAl(imdbId: imdbId)
        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(imdbId: "test")
    }
}
