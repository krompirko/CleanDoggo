//
//  BreedListViewController.swift
//  Clean Doggo
//
//  Created by Jovan Radivojsa on 9/30/18.
//  Copyright (c) 2018 Jovan Radivojsa. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol BreedListDisplayLogic: class {
    func displaySomething(_ viewModel: BreedList.Something.ViewModel)
}

class BreedListViewController: UIViewController, BreedListDisplayLogic {
    
    // MARK: - Properties
    var interactor: BreedListBusinessLogic?
    var router: BreedListRouterInput?
    
    // Mark: - Outlets
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    // MARK: - Object Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        BreedListConfigurator.sharedInstance.configure(self)
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: - Do something
    
    func doSomething() {
        let request = BreedList.Something.Request()
        interactor?.doSomething(request)
    }
    
    func displaySomething(_ viewModel: BreedList.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}