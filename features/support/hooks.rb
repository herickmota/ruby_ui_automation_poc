Before do
  @login = LoginPage.new
  @home = HomePage.new
  @user = Users.new
  page.driver.browser.manage.window.maximize
  visit CONFIG_UI['url']
end

Before ('@auth') do
  @login.login('smoke.testing@sovos.com','Sovos123!')
end
