//
//  Article+CoreDataClass.swift
//  Pods-rkoval2019_Example
//
//  Created by Robert on 23.01.19.
//
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
    @NSManaged public var creationData: NSDate?
    @NSManaged public var modificationDate: NSDate?
    
    override public var description: String {
        let str1 = """
        Title: \(String(describing: title))
        Content: \(String(describing: content))
        Language: \(String(describing: language))
        Creation Date: \(String(describing: creationData))
        Modification Date : \(String(describing: modificationDate))
        """
        return str1
    }
}
