//
//  ViewController.swift
//  rkoval2019
//
//  Created by RobertKoval on 01/23/2019.
//  Copyright (c) 2019 RobertKoval. All rights reserved.
//

import UIKit
import rkoval2019

class ViewController: UIViewController {
    let articleManager = ArticleManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let article1 : Article = articleManager.newArticle()
        
        article1.title = "Title 1"
        article1.content = "Some content in first Article"
        article1.creationData = NSDate()
        article1.modificationDate = NSDate()
        article1.language = "fr"
        articleManager.save()
        
        let article2 : Article = articleManager.newArticle()
        
        article2.title = "Title 2"
        article2.content = "Some content in secont Article"
        article2.creationData = NSDate()
        article2.modificationDate = NSDate()
        article2.language = "en"
        articleManager.save()
        
        //print(articleManager.getArticles(containString: "secont"))
        //print(articleManager.getAllArticles())
        //print(articleManager.getArticles(withLang: "en"))
        articleManager.removeArticle(article: article2)
        print(articleManager.getAllArticles())

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

