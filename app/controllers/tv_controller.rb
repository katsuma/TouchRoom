class TvController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTitle('TV', image: 'tv.png'.uiimage, tag: 1)
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor
  end
end
