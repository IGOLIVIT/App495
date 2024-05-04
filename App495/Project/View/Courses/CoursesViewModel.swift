//
//  CoursesViewModel.swift
//  App495
//
//  Created by IGOR on 26/04/2024.
//

import SwiftUI
import CoreData

final class CoursesViewModel: ObservableObject {
    
    @Published var search: String = ""

    @Published var images: [String] = ["Photographer", "Marketing", "Python", "Figma"]
    @Published var currentImage = ""

    @Published var isAdd: Bool = false
    @Published var isDelete: Bool = false
    @Published var isReset: Bool = false
    @Published var isDetail: Bool = false

    @Published var coTitle = ""
    @Published var coSelectedImage = ""
    @Published var coThumbnail = ""
    @Published var coCategory = ""
    @Published var coDescription = ""
    @Published var coDetailedDescr = ""
    @Published var coParts = ""
    @Published var coSPrice = ""
    @Published var coCertification = ""
    @Published var coStedDiscounts = ""
    @Published var coRefDiscounts = ""

    @Published var courses: [CoursesModel] = []
    @Published var selectedCourse: CoursesModel?

    func addCourse() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "CoursesModel", into: context) as! CoursesModel

        loan.coTitle = coTitle
        loan.coSelectedImage = coSelectedImage
        loan.coThumbnail = coThumbnail
        loan.coCategory = coCategory
        loan.coDescription = coDescription
        loan.coDetailedDescr = coDetailedDescr
        loan.coParts = coParts
        loan.coSPrice = coSPrice
        loan.coCertification = coCertification
        loan.coStedDiscounts = coStedDiscounts
        loan.coRefDiscounts = coRefDiscounts

        CoreDataStack.shared.saveContext()
    }
    
    func fetchCourses() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<CoursesModel>(entityName: "CoursesModel")

        do {
            
            let result = try context.fetch(fetchRequest)
            
            if search.isEmpty {
                
                self.courses = result

            } else {
                
                self.courses = result.filter{($0.coTitle ?? "").lowercased().contains(search.lowercased())}
                
            }
        
            
        } catch let error as NSError {
            
            print("catch")
            
            print("Error fetching persons: \(error), \(error.userInfo)")
            
            self.courses = []
        }
    }
    
    func fetchCoursesBySearch() -> [CoursesModel] {
        
        return courses.isEmpty ? courses : search.isEmpty ? courses : courses.filter{($0.coTitle ?? "").lowercased().contains(search.lowercased())}
    }

}


