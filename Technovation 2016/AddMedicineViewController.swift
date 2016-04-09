//
//  AddMedicineViewController.swift
//  Technovation 2016
//
//  Created by Ahsoka Tano on 3/20/16.
//  Copyright (c) 2016 Ahsoka Tano. All rights reserved.
//

import UIKit

class AddMedicineViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
    let pickerData = ["Hourly", "Daily", "Weekly", "Monthly", "Custom"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
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
