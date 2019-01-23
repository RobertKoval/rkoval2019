//
//  ArticleManager.swift
//  Pods-rkoval2019_Example
//
//  Created by Robert on 23.01.19.
//

import Foundation
import CoreData

public class ArticleManager {
    
    var container : NSPersistentContainer!
    var context : NSManagedObjectContext!
    
    public init() {
        guard let modelURL = Bundle(for: Article.self).url(forResource: "ArticleDM", withExtension: "momd") else {
            print("No model")
            return
        }
        guard let mom = NSManagedObjectModel(contentsOf: modelURL) else {
            print("error model loading")
            return
        }
        self.container = NSPersistentContainer(name: "ArticleDM", managedObjectModel: mom)
        self.container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        })
        print("All ok")
        self.context = container.viewContext
    }
    
    public func newArticle() -> Article {
        
        let newEntity = NSEntityDescription.entity(forEntityName: "Article", in: context)
        let newArticle = NSManagedObject(entity: newEntity!, insertInto: context)
        return newArticle as! Article
    }
    
    public func getAllArticles() -> [Article] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Article")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for articles in result as! [Article] {
                print(articles.description)
            }
            return result as! [Article]
        } catch {
            print("Can't fetch articles")
        }
        return []
    }
    
    public func getArticles(withLang lang: String) -> [Article] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Article")
        request.predicate = NSPredicate(format: "language == %@", lang)
        do {
            let result = try context.fetch(request)
            for articles in result as! [Article] {
                print(articles.description)
            }
            return result as! [Article]
        } catch {
            print("Can't find")
        }
        return []
    }
    public func getArticles(containString str: String) -> [Article] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Article")
        request.predicate = NSPredicate(format: "content contains[cd] %@", str)
        do {
            let result = try context.fetch(request)
            for articles in result as! [Article] {
                print(articles.description)
            }
            return result as! [Article]
        } catch {
            print("Can't find")
        }
        return []
    }
    
    public func removeArticle(article : Article) {
        context.delete(article)
    }
    
    public func save() {
        
        if context.hasChanges {
            do {
                try context.save()
                print("SAved")
            } catch {
                fatalError("Can't save changes!")
            }
        }
    }
}
