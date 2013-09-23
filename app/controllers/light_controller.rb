class LightController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super

    @light = Light.new

    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Light', image: 'light.png'.uiimage, tag: 2)
    self
  end

  def viewDidLoad
    super
    self.view = LightView.alloc.initWithFrame(view.frame, andViewController: self)
  end


  def signal_to(sender)
    button = sender
    signal = button.currentTitle.downcase.to_sym
    @light.send_signal(signal)
  end
end
