//
//  MainTabController.swift
//  InstagramFirestoreTutorial
//
//  Created by 이유진 on 2022/02/17.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - LifeCycle
    
    override func viewDidLoad(){
        super.viewDidLoad()
        configViewControllers()
    }
    
    // MARK: - Helpers
    
    func configViewControllers() {
        view.backgroundColor = .white

        let feed = FeedController()
        let search = SearchController()
        let imageSelector = ImageSelectorController()
        let notifications = NotificationsController()
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
    }
}
