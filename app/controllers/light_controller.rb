class LightController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Light', image: 'light.png'.uiimage, tag: 2)
    @light_signals = { on: 1000, off: 1001 }
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
      action: :signal_to,
      forControlEvents: UIControlEventTouchUpInside
    )
    self.view <<  @on_button
  end

  def signal_to
    BW::HTTP.get("http://192.168.0.6:9292/") do |response|
      p response.body.to_str
    end
  end
end
