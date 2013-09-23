class LightController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super

    @light = Light.new

    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Light', image: 'light.png'.uiimage, tag: 2)
    self
  end

  def viewDidLoad
    super
    self.view.backgroundColor = UIColor.whiteColor

    init_buttons
  end


  def init_buttons
    @on_button = UIButton.buttonWithType UIButtonTypeRoundedRect
    @on_button.setTitle 'ON', forState: UIControlStateNormal
    @on_button.frame = [[100, 100], [100, 50]]
    @on_button.addTarget(self,
      action: 'signal_to:',
      forControlEvents: UIControlEventTouchUpInside
    )
    self.view <<  @on_button
  end

  def signal_to(sender)
    button = sender
    signal = button.currentTitle.downcase.to_sym
    @light.send_signal(signal)
  end
end
