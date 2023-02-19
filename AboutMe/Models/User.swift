//
//  Login.swift
//  AboutMe
//
//  Created by Bektemur Mamashayev on 16/02/23.
//


struct User {
    let login: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let age: String
    let country: String
    let city: String
    let education: String
    let hobby: String
    let userEducation: Education
    
    static func getPersonData() -> Person {
        return Person(
            name: "Bektemur",
            age: "21",
            country: "Uzbekistan",
            city: "Namangan",
            education: "Bachelor's 2nd year",
            hobby: "Programming",
            userEducation: Education.getUserEducation()
        )
    }
}

struct Education {
    let university: String
    let country: String
    let faculty: String
    let major: String
    let level: String
    let gpa: String
    
    static func getUserEducation() -> Education {
        return Education(
            university: "Yamanashi Gakuin",
            country: "Japan",
            faculty: "iCLA",
            major: "Data Science",
            level: "2nd year",
            gpa: "3.8/4"
        )
    }
}

