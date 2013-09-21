class AppDelegate
  include
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    tv_controller     = TvController.alloc.initWithNibName(nil, bundle: nil)
    light_controller  = LightController.alloc.initWithNibName(nil, bundle: nil)
    aircon_controller = AirconController.alloc.initWithNibName(nil, bundle: nil)

    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [tv_controller, light_controller, aircon_controller]

    @window.rootViewController = tab_controller
    true
  end
end
