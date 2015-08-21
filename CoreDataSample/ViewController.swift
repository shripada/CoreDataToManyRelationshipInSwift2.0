//
//  ViewController.swift
//  CoreDataSample
//
//  Created by Shripada Hebbar on 21/08/15.
//  Copyright © 2015 Robosoft Technologies, Pvt. Ltd. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func doStuff(sender: AnyObject) {

    //Create a person, book and relate them
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    let person = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext:appDelegate.managedObjectContext) as! Person
    person.name = "K & R"

    let book = NSEntityDescription.insertNewObjectForEntityForName("Book", inManagedObjectContext:appDelegate.managedObjectContext) as! Book
    book.name = "C language"

    let book1 = NSEntityDescription.insertNewObjectForEntityForName("Book", inManagedObjectContext:appDelegate.managedObjectContext) as! Book
    book1.name = "Practice of programming"


    //Add books to Person
    person.addBooksObject(book)
    person.addBooksObject(book1)
    


    try! appDelegate.managedObjectContext.save()

    




  }
}

