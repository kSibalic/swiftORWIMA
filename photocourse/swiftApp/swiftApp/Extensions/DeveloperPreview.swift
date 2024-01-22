//
//  DeveloperPreview.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var course: [Course] = [
        .init(
            id: NSUUID().uuidString,
            authorUid: NSUUID().uuidString,
            authorName: "Karlo Šibalić",
            authorImageUrl: "profilePhoto",
            title: "Drone Flying",
            difficulty: "Complex",
            description: "Flying with drone is the most challenging skill you might need to learn for your photo/video career.",
            imageUrl: "listing-3",
            experience: "5+ ",
            numOfShootings: "99+ ",
            application: 2,
            applications: [.photo, .video],
            usage: [.superTutor, .founder, .veteran],
            type: .drone
        ),
        .init(
            id: NSUUID().uuidString,
            authorUid: NSUUID().uuidString,
            authorName: "Lovro Pavličić",
            authorImageUrl: "profilePhotoL",
            title: "Lightroom Editing",
            difficulty: "Complex",
            description: "Photo editing might be the most important part to the final product (photo). Essentialy, it is not hard to learn, but increadebly hard to master",
            imageUrl: "listing-2",
            experience: "7+ ",
            numOfShootings: "150+ ",
            application: 2,
            applications: [.postProduction, .photo],
            usage: [.superTutor, .veteran],
            type: .editing
        ),
        .init(
            id: NSUUID().uuidString,
            authorUid: NSUUID().uuidString,
            authorName: "Karlo Šibalić",
            authorImageUrl: "profilePhoto",
            title: "Gimbal Usage",
            difficulty: "Balanced",
            description: "Gimbal is, apart from the camera and lens, the most used piece of equipment when it comes to video shooting",
            imageUrl: "listing-1",
            experience: "5+ ",
            numOfShootings: "99+ ",
            application: 1,
            applications: [.video],
            usage: [.superTutor, .founder, .veteran],
            type: .video
        ),
        .init(
            id: NSUUID().uuidString,
            authorUid: NSUUID().uuidString,
            authorName: "Lovro Pavličić",
            authorImageUrl: "profilePhotoL",
            title: "Focal Length",
            difficulty: "Simple",
            description: "Using correct focal lenght makes the photo appear much better and gives desired effect.",
            imageUrl: "listing-3",
            experience: "7+ ",
            numOfShootings: "150+ ",
            application: 2,
            applications: [.photo, .video],
            usage: [.superTutor, .veteran],
            type: .photo
        ),
        .init(
            id: NSUUID().uuidString,
            authorUid: NSUUID().uuidString,
            authorName: "Karlo Šibalić",
            authorImageUrl: "profilePhoto",
            title: "Rule of thirds",
            difficulty: "Complex",
            description: "Easy in theory, impossible in practice!",
            imageUrl: "listing-2",
            experience: "5+ ",
            numOfShootings: "99+ ",
            application: 2,
            applications: [.photo, .video],
            usage: [.superTutor, .founder, .veteran],
            type: .photo
        ),
    ]
}
