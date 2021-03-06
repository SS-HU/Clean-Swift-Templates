//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput {
    func doSomething(request: ___FILEBASENAMEASIDENTIFIER___Request)
}

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController,  ___FILEBASENAMEASIDENTIFIER___PresenterOutput {
    var output: ___FILEBASENAMEASIDENTIFIER___ViewControllerOutput!
    var router: ___FILEBASENAMEASIDENTIFIER___Router!
    
    // MARK: Object lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ___FILEBASENAMEASIDENTIFIER___Configurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomethingOnLoad()
    }
    
    // MARK: Event handling
    
    func doSomethingOnLoad() {
        let request = ___FILEBASENAMEASIDENTIFIER___Request()
        output.doSomething(request: request)
    }
    
    // MARK: Display logic
    
    func displaySomething(viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel) {
        // NOTE: Display the result from the Presenter
    }
}
