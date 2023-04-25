# Coordinate_Pattern
Coordinate  Design Pattern for ViewController Navigation
#Easy way for storyboard Instantiate
protocol Storyboarded{
    static func instantiate() -> Self
}
extension Storyboarded where Self:UIViewController{
    static func instantiate()->Self{
        let id = String.init(describing: self)
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let objViewController = storyboard.instantiateViewController(withIdentifier: id) as! Self
        objViewController.title = "\(id)"
        return objViewController
    }
}
