//
//  FilmDetayViewModel.swift
//  filmKitabi
//
//  Created by muhammet on 3.04.2022.
//

import Foundation

class FilmDetayViewModel : ObservableObject {
    @Published var filmDetayi : FilmDetaylariViewModel?
    
    let downloaderClient = DownloaderClient()
    
    func filmDetayiAl(imdbId : String){
        downloaderClient.filmDetayiniIndir(imdbId: imdbId) { (sonuc) in
            switch sonuc {
            case .failure(let hata):
                print(hata)
            case .success(let filmDetay):
                self.filmDetayi = FilmDetaylariViewModel(detay: filmDetay)
            }
        
        }
    }
    
}
struct FilmDetaylariViewModel{
    let detay : FilmDetay
    
    var title : String{
        detay.title
    }
    var year : String{
        detay.year
    }
    var genre : String{
        detay.genre
    }
    var writer : String{
        detay.writer
    }
    var actors : String{
        detay.actors
    }
    var plot : String{
        detay.plot
    }
    var awards : String{
        detay.awards
    }
    var poster : String{
        detay.poster
    }
    var metascore : String{
        detay.metascore
    }
    var imdbRating : String{
        detay.imdbRating
    }
    var imdbId : String{
        detay.imdbId
    }
    var runtime : String{
        detay.runtime
    }
    var released : String{
        detay.released
    }
}
