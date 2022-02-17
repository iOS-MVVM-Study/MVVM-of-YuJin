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
        
        let layout = UICollectionViewFlowLayout()
        view.backgroundColor = .white
        
        let feed = templateNavigationController(unselectedImage: ImageLiterals.icHomeUnselected,
                                                selectedImage: ImageLiterals.icHomeSelected,
                                                rootViewController: FeedController(collectionViewLayout: layout))
        
        let search = templateNavigationController(unselectedImage: ImageLiterals.icSearchSelected,
                                                  selectedImage: ImageLiterals.icSearchSelected,
                                                  rootViewController: SearchController())
        
        let imageSelector = templateNavigationController(unselectedImage: ImageLiterals.icPlusUnselected,
                                                         selectedImage: ImageLiterals.icPlusUnselected,
                                                         rootViewController: ImageSelectorController())
        
        let notifications = templateNavigationController(unselectedImage: ImageLiterals.icLikeUnselected,
                                                        selectedImage: ImageLiterals.icLikeSelected,
                                                        rootViewController: NotificationsController())
        
        let profile = templateNavigationController(unselectedImage: ImageLiterals.icProfileUnselected,
                                                   selectedImage: ImageLiterals.icProfileSelected,
                                                   rootViewController: ProfileController())
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
        tabBar.tintColor = .black
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
}
