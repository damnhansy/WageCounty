//
//  FAQViewController.swift
//  WageCountyProject
//
//  Created by Nishan Timilsina on 4/26/16.
//  Copyright © 2016 Nishan Timilsina. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title="FAQ"
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 238.0/255.0, green: 110.0/255.0, blue: 115.0/255.0, alpha: 1.0)
        
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL (string: "http://www.wagecounty.com/faq/");
        let requestObj = NSURLRequest(URL: url!);
        myWebView.loadRequest(requestObj);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
