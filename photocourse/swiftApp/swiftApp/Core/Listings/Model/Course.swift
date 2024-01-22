//
//  Course.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import Foundation

struct Course: Identifiable, Codable, Hashable {
    let id: String
    let authorUid: String
    let authorName: String
    let authorImageUrl: String
    let title: String
    let difficulty: String
    let description: String
    var imageUrl: String
    let experience: String
    let numOfShootings: String
    let application: Int
    
    var applications: [Applications]
    var usage: [ListingUsage]
    
    let type: CourseType
}

enum Applications: Int, Codable, Identifiable, Hashable {
    case photo
    case video
    case postProduction
    
    var imageName: String {
        switch self {
        case .photo: return "camera"
        case .video: return "video"
        case .postProduction: return "wand.and.rays"
        }
    }
    
    var title: String {
        switch self {
        case .photo: return "Photography"
        case .video: return "Videography"
        case .postProduction: return "Post Production"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum ListingUsage: Int, Codable, Identifiable, Hashable {
    case superTutor
    case founder
    case veteran
    
    var imageName: String {
        switch self {
        case .superTutor: return "medal"
        case .founder: return "person"
        case .veteran: return "clock.badge.checkmark"
        }
    }
    
    var title: String {
        switch self {
        case .superTutor: return "Supertutor"
        case .founder: return "Founder of PhotoCourse"
        case .veteran: return "Veteran"
        }
    }
    
    var id: Int { return self.rawValue }
}

enum CourseType: Int, Codable, Identifiable, Hashable {
    case photo
    case video
    case drone
    case editing
    
    var description: String {
        switch self {
        case .photo: return "Photography"
        case .video: return "Videography"
        case .drone: return "Drone"
        case .editing: return "Editing"
        }
    }
    
    var id: Int { return self.rawValue }
}
