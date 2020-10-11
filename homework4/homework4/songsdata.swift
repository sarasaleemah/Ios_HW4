//
//  songsdata.swift
//  homework4
//
//  Created by Haya Saleemah on 10/9/20.
//

import Foundation

struct songsModel {
    var actorName: String = ""
//    var showname: [String]
    var imageName: String
//    var imageshowName: String
    var songs : [song]
//    init(actorname: String, showname: [String], imagename: String , imageshowname: String) {
//        self.actorName = actorname
////        self.showname = showname
//        self.imageName = imagename
////        self.imageshowName = imageshowname
//
//    }
    
}

struct song
    {
    var name : String
    var img : String
    
    }


var songData = [
    songsModel(actorName: "Abd ElNasser Darwish",  imageName:"cover1", songs: [song(name: "alwarda", img: "alwarda") , song(name: "baytona", img: "baytona")]  ),
    songsModel(actorName: "Adel Imam", imageName:"cover2", songs: [song(name: "mt3lamah", img: "mat3almah")] ),
    songsModel(actorName: "Abdulhussain Abdulredha", imageName:"cover3", songs: [song(name: "adrey7lm", img: "7elm")]),
    songsModel(actorName: "just for Mr Omar", imageName:"justforMrOmar", songs: [song(name: "justforMrOmar", img: "justforMrOmar")]),
    
    
]

