class AirconController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Aircon', image: 'temperature.png'.uiimage, tag: 3)
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
  end
end
