class LightView < UIView
  attr_accessor :viewController

  def initWithFrame(frame, andViewController: viewController)
    initWithFrame(frame)
    self.viewController = viewController
    self.backgroundColor = UIColor.whiteColor
    init_buttons
    self
  end

  def init_buttons
    @on_button = UIButton.buttonWithType UIButtonTypeRoundedRect
    @on_button.setTitle 'ON', forState: UIControlStateNormal
    @on_button.frame = [[100, 100], [100, 50]]
    @on_button.addTarget(self.viewController,
      action: 'signal_to:',
      forControlEvents: UIControlEventTouchUpInside
    )
    self.addSubview(@on_button)
  end
end
