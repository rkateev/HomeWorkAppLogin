//
//  User.swift
//  HomeWorkAppLogin
//
//  Created by  Husein on 18.07.2021.
//

import Foundation

struct User {
    let userName: String
    let passWord: String
    let person: Person
    
    static func getUser() -> User {
        User(userName: "Husein", passWord: "password", person: Person.getPerson())
    }
    
}


struct Person {
    let name: String
    let surname: String
    let age: Int
    let hobby: String
    
    static func getPerson() -> Person {
            Person(
                    name: "Husein",
                    surname: "Dudaev",
                    age: 29,
                    hobby: "I like to read books, go into the wild places. I love lonelyness and ")
    }
}
