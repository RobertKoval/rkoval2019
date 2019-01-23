//
//  File.swift
//  Pods-rkoval2019_Example
//
//  Created by Robert on 23.01.19.
//

import Foundation
import CoreData

@objc(Article)
public class Article: NSManagedObject {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article")
    }
    
    @NSManaged public var title: String?
    @NSManaged public var content: String?
    @NSManaged public var language: String?
    @NSManaged public var image: NSData?
    @NSManaged public var creationDate: NSDate?
    @NSManaged public var modificationDate: NSDate?
    
    override public var description: String {
        let str1 = "Title: \(String(describing: title))\nContent: \(String(describing: content))\nLanguage: \(String(describing: language))"
        let str2 = "\nCreation Date: \(String(describing: creationDate?.description)))\nModification Date: \(String(describing: modificationDate?.description))"

        return str1 + str2
    }
}

