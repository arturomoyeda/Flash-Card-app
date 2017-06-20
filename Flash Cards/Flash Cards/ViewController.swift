//
//  ViewController.swift
//  Flash Cards
//
//  Created by iD Student on 6/19/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource ,UIPickerViewDelegate{

    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var LabelQuestion: UILabel!
    @IBOutlet weak var QuestionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerview.dataSource = self
        pickerview.delegate = self
      
        SetupCard()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func SetupCard (){
        QuestionText.text = CardCollection.instance.currentCard.question
        LabelQuestion.text = "Question \(CardCollection.instance.currentIndex+1)"
    }
    
    public func numberOfComponents(in pickerview: UIPickerView) -> Int {
        return 1
        
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CardCollection.instance.currentCard.options.count
        
    }

    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CardCollection.instance.currentCard.options[row]
    }
}





