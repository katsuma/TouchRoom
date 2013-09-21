class LightController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Light', image: 'light.png'.uiimage, tag: 2)
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
  end
end
