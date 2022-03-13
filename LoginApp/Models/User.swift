//
//  User.swift
//  LoginApp
//
//  Created by Максим Самусь on 12.03.2022.
//

import UIKit

struct User {
    let userName: String
    let userLogin: String
    let userPassword: String
    let description: String
    let myPhoto: UIImage
    
    static func getData() -> User {
        User(
            userName: "Максим",
            userLogin: "User",
            userPassword: "Password",
            description: """
            Привет, меня зовут Максим и я маркетолог.
            Желание писать код для мобильных устройств со мной уже давно.
            Cейчас я двигаюсь к своей цели.
            Уверен, что все получится и нет ничего невозможного )
            """,
            myPhoto: UIImage(named: "photo")!
        )
    }
}
