//
//  PrimeCountViewController.swift
//  Prime Count
//
//  Created by Manisha Patel on 25/03/2015.
//  Copyright (c) 2015 Manisha Patel. All rights reserved.
//

import Foundation
import UIKit

class PrimeCountViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var TableView: UITableView!
    
    var prime = [ "2", "3", "5", "7", "11" ]
  
    var multiple = ""
    
    override func viewDidLoad() {
        self.TableView.dataSource = self
        self.TableView.delegate = self
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.prime.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        cell.textLabel!.text = self.prime[indexPath.row]
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.multiple = self.prime[indexPath.row]
        
        self.performSegueWithIdentifier("PrimeToMultipleSegue", sender: self)
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var secondViewController = segue.destinationViewController as MultipleViewController
        
        secondViewController.multiple = "prime"
        
        
    }
   
    
}
