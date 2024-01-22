//
//  ExploreCourse.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import Foundation

class ExploreCourse {
    func fetchCourse() async throws -> [Course] {
        return DeveloperPreview.shared.course
    }
}
