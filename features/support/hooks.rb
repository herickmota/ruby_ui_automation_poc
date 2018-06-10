Before do
  @login = LoginPage.new
  @home = HomePage.new
  @user = Users.new
end

Before ('@auth') do
  @login.load
  @login.login('smoke.testing@sovos.com','Sovos123!')
end
