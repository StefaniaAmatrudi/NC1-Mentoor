//
//  Task.swift
//  Fake_mentoor
//
//  Created by Stefania Amatrudi on 22/11/22.
//

import SwiftUI

//Task model and sample taks

//Arrey of task
struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date ()
}
 //Total Task Meta View
struct TaskMetaData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}
//sample date for testing
func getSampleDate(offset: Int)->Date{
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

//sample task
var tasks: [TaskMetaData] = [
    
    TaskMetaData(task: [
        
        Task(title: "Talk tp iJustine"),
        Task(title: "iPhone 13 great design change"),
        Task(title: "Nothing much workout")
        
    ], taskDate:getSampleDate(offset:1)),
    TaskMetaData(task:[
    
        Task(title: "Talk to Jenna")],
                 taskDate: getSampleDate(offset: -3)),
    TaskMetaData(task:[
    
        Task(title: "Talk with Tim")],
                 taskDate: getSampleDate(offset: -8)),
    TaskMetaData(task:[
    
        Task(title: "Next Version of SwiftUI")],
                 taskDate: getSampleDate(offset: -22)),
    TaskMetaData(task:[
    
        Task(title:"Iphone 13 Great")],
                 taskDate: getSampleDate(offset:15)),
    TaskMetaData(task: [
    
        Task(title: " Kasoft app update")],
                 taskDate: getSampleDate(offset: -20))
    
]
