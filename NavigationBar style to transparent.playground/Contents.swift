//Sets the default navigation bar to be transparent in the view that the code gets implemented



//Put in on the viewDidLoad

override func viewDidLoad() {
    super.viewDidLoad()
    
    //Setup navigation bar appearance
    let navigationBarAppearance = UINavigationBarAppearance()
    navigationBarAppearance.configureWithDefaultBackground()
    navigationItem.standardAppearance = navigationBarAppearance
    navigationItem.compactAppearance = navigationBarAppearance
    navigationItem.scrollEdgeAppearance = navigationBarAppearance
}
