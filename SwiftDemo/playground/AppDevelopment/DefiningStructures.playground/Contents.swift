//: Playground - noun: a place where people can play

import UIKit

let songTitles = ["Ooh yeah", "Maybe", "No, no, no", "Makin' up your mind"]
let artists = ["Brenda and the Del-chords", "Brenda and the Del-chords", "Fizz", "Boom!"]
let durations = [90, 200, 150, 440]
let song3 = "\(songTitles[2]) by \(artists[2]), duration \(durations[2])s"


//define your own types 自定义数据类型:struct/class

//不可变
struct Song {
    let title: String
    let artist: String
    let duration: Int
}

let song = Song(title: "No, no, no", artist: "Fizz", duration: 1500)
song.title
song.artist
song.duration


//可变
struct SongMutate {
    let title: String
    let artist: String
    let duration: Int
    var rating: Int
    var formattedDuration: String {
        let minute = duration / 60
        let second = duration % 60
        return "\(minute)m \(second)s"
    }
    
    func longerThan(_ song: SongMutate) -> Bool {
        return duration > song.duration
    }
}
var songMutate1 = SongMutate(title: "No, no, no", artist: "Fizz", duration: 150, rating: 0)
var songMutate2 = SongMutate(title: "Great", artist: "Classtic", duration: 250, rating: 0)
songMutate1.rating
songMutate1.rating = 4
songMutate1.rating
songMutate1.formattedDuration //计算属性
songMutate1.longerThan(songMutate2)


//嵌套
struct Musicien {
    let name: String
    let preferredMaxDecibles: Int
}

struct Band {
    var leadSinger: Musicien
}

let musicien = Musicien(name: "Jack", preferredMaxDecibles: 10)
var band = Band(leadSinger: musicien)
band.leadSinger.name



