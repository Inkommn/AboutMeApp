//
//  AboutMeInfo.swift
//  AboutMeApp
//
//  Created by Shamkhan Mutuskhanov on 27.05.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getInformationAboutUser() -> User {
        User(login: "User",
             password: "Password",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: String
    
    let country: String
    let occupation: String
    let bio: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
        static func getPerson() -> Person {
            Person(
                name: "Sham",
                surname: "M",
                age: "26",
                country: "Russia",
                occupation: "iOS Devolper",
                bio: """
                    🙂
                    """
        )
    }
}


