//
//  Login.swift
//  AboutMe
//
//  Created by Bektemur Mamashayev on 16/02/23.
//


struct User {
    let login = "User"
    let password = "1111"
    let person: Person? = nil
    
    let userEducation: Education? = nil
    
    static func getPersonData() -> Person {
        return Person(
            name: "Bektemur", age: "21",
            country: "Uzbekistan", city: "Namangan",
            education: "Bachelor's 2nd year", hobby: "Programming"
        )
    }
    static func getEducationData() -> Education {
        return Education(
            university: "Yamanashi Gakuin", country: "Japan",
            faculty: "iCLA", major: "Data Science",
            level: "2", gpa: "3.8/4")
    }
    
}

struct Person {
    let name: String
    let age: String
    let country: String
    let city: String
    let education: String
    let hobby: String
}

struct Education {
    let university: String
    let country: String
    let faculty: String
    let major: String
    let level: String
    let gpa: String
}

