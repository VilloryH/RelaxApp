
import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .gray
        tabBar.backgroundColor = UIColor(named: "darkGreen")
        loadTabBar()
       
    }
    
    func loadTabBar() {
        
        let homeVC = UINavigationController (rootViewController: HomeViewController())
        homeVC.tabBarItem.image = UIImage(systemName: "house.fill")
        
   
    
        let profileVC = UINavigationController (rootViewController: ProfileViewController())
        profileVC.tabBarItem.image = UIImage(systemName: "person.fill")
     
        
        viewControllers = [homeVC, profileVC]
        
        
    }
}
