//
//  ExploreViewModel.swift
//  swiftApp
//
//  Created by Karlo Šibalić on 16.01.2024..
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var courses = [Course]()
    @Published var searchCourse = ""
    private let service: ExploreCourse
    private var courseCopy = [Course]()
    
    
    init(service: ExploreCourse) {
        self.service = service
        
        Task { await fetchCourse() }
    }
    
    func fetchCourse() async {
        do {
            self.courses = try await service.fetchCourse()
            self.courseCopy = courses
        } catch {
            print("DEBUG: Failed to fetch course with error: \(error.localizedDescription)")
        }
    }
    
    func updateCoursesSearch() {
        let filteredCourses = courses.filter({
            //$0.title.lowercased() == searchCourse.lowercased()
            $0.title.lowercased().contains(searchCourse.lowercased()) == searchCourse.lowercased().contains(searchCourse.lowercased())
        })
        
        self.courses = filteredCourses.isEmpty ? courseCopy : filteredCourses
    }
}


// $0.title.lowercased().contains(searchCourse.lowercased()) == searchCourse.lowercased().contains(searchCourse.lowercased())
