//
//  HomeViewModel.swift
//  App495
//
//  Created by IGOR on 25/04/2024.
//

import SwiftUI
import CoreData

final class HomeViewModel: ObservableObject {

    @Published var currencies: [String] = ["EUR/USD", "USD/JPY", "EUR/JPY", "AUD/USD", "USD/CAD", "USD/CHF", "NZD/USD"]
    @Published var currentCurrency = ""
    @AppStorage("pair") var pair = ""
    
    @AppStorage("summ") var summ: Int = 0
    
    @Published var TCC1 = ""
    @Published var TE1 = ""
    @Published var TP1 = ""
    @Published var TCS1 = ""
    
    @AppStorage("TCC") var TCC: String = ""
    @AppStorage("TE") var TE: String = ""
    @AppStorage("TP") var TP = ""
    @AppStorage("TCS") var TCS: String = ""
    
    @Published var isTCC: Bool = false
    @Published var isTE: Bool = false
    @Published var isTP: Bool = false
    @Published var isTCS: Bool = false
    
    @Published var addEarnings = ""
    @Published var addCourses = ""
    @Published var addWorkingHours = ""

    @Published var isAdd: Bool = false
    @Published var isDelete: Bool = false
    @Published var isReset: Bool = false
    @Published var isDetail: Bool = false
    
    @Published var isGraph: Bool = false
    @Published var isCurrencies: Bool = false

    @Published var transTitle = ""
    @Published var transSubtitle = ""
    @Published var transAmount = ""

    @Published var transactions: [TransModel] = []
    @Published var selectedTransaction: TransModel?

    func addTransaction() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "TransModel", into: context) as! TransModel

        loan.transTitle = transTitle
        loan.transSubtitle = transSubtitle
        loan.transAmount = transAmount

        CoreDataStack.shared.saveContext()
    }
    
    func fetchTransactions() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<TransModel>(entityName: "TransModel")

        do {
            
            let result = try context.fetch(fetchRequest)
        
            self.transactions = result
            
        } catch let error as NSError {
            
            print("catch")
            
            print("Error fetching persons: \(error), \(error.userInfo)")
            
            self.transactions = []
        }
    }
}
