//
//  User.swift
//  HomeWork2.06
//
//  Created by Ivan on 10.10.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "User", password: "Password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let profession: String
    let company: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Ivan",
            surname: "Mamaev",
            age: 32,
            profession: "Student",
            company: "Swiftbook",
            bio: "Иван родился 2 июня 1992 года в городе Москва. Там же прошли детство, отрочество, юность. Позже поступил в МГУ имени М.В. Ломоносова на филологический факультет. Далее жизнь столкнула Ивана с технической сферой труда, а именно концертная деятельность. В свободное от работы и учебы время Иван увлекается путешествиями, кинематографом, культурой кальянов и общением с друзьями. Музыкальные предпочтения - меломан, но в сердце величайшая группа Linkin Park."
        )
    }
}
