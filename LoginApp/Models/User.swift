//
//  User.swift
//  LoginApp
//
//  Created by Максим Самусь on 12.03.2022.
//

struct User {
    let userName: String
    let userLogin: String
    let userPassword: String
    let description: String
    
    static func getData() -> User {
        User(
            userName: "Максим",
            userLogin: "User",
            userPassword: "Password",
            description: "Привет"
        )
    }
}
