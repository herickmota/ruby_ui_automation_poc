Before do
  @login = LoginPage.new
  @home = HomePage.new
  @user = Users.new
  page.driver.browser.manage.window.maximize
end

Before ('@auth') do
  @login.load
  @login.login('smoke.testing@sovos.com','Sovos123!')
end

  After do |scenario|
    scenario_name = scenario.name.tr(' ', "_").downcase!
    screenshot = "results/shots/#{scenario_name}.png"
    page.save_screenshot(screenshot)
  end
