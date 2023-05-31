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
                name: "Shamkhan",
                surname: "Mutuskhanov",
                age: "26",
                country: "Russia",
                occupation: "iOS Devolper",
                bio: """
                    До учебы на iOS разработчике, работал в интернете, преимущество на площадке eBay, а до этого в
                    семейной строительной компании. Но после ситуации в России, eBay у нас прекратил деятельность,
                    и заниматься этим стало практически невозможно, а работа в строительной компании это просто не
                    мое :) Ну и кроме этого, были попытки стримить на Twitch, и всякие другие занятия связанные с
                    видеоиграми, так и прошло 26 лет. На этом этапе своей жизни я решил стать iOS разработчиком,
                    мысль о том что бы попробывать была давно, но никак не решался и вот я тут, пишу этот текст :D
                    Начинал я с нуля и вот уже идет 2-й месяц учебы, с выбором языка и площадкой для учебы я не
                    прогадал, все очень круто хоть и моментами очень сложно. Как говорится главное не сдаваться.🙂
                    """
        )
    }
}


