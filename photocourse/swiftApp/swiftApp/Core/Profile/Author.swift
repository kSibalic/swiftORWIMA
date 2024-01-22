//
//  Author.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 15.01.2024..
//

import Foundation

struct Skill: Identifiable {
    var id: String
    let skillName: String
    let image: String
}

struct Experience: Identifiable {
    var id: String
    let companyName: String
    let role: String
    let duration: String
}

struct Author {
    let name: String = "Karlo Šibalić"
    let role: String = "Photographer & Videographer"
    let description: String = ""
    let location: String = "Nijemci"
    
    let skills: [Skill] = [
        Skill(id: UUID().uuidString, skillName: "Photo", image: "camera"),
        Skill(id: UUID().uuidString, skillName: "Design", image: "scribble"),
        Skill(id: UUID().uuidString, skillName: "Video", image: "video"),
        Skill(id: UUID().uuidString, skillName: "Photo edit", image: "slider.horizontal.3"),
        Skill(id: UUID().uuidString, skillName: "Marketing", image: "person.3"),
        Skill(id: UUID().uuidString, skillName: "Video edit", image: "wand.and.stars"),
    ]
    let experiences: [Experience] = [
        Experience(id: UUID().uuidString, companyName: "ILUMO", role: "Founder", duration: "2023. - Present"),
        Experience(id: UUID().uuidString, companyName: "LK Photo", role: "Chief Technical Officer", duration: "2020. - 2023."),
        Experience(id: UUID().uuidString, companyName: "Freelancing", role: "Freelancer", duration: "2019. - 2020."),
    ]
}
