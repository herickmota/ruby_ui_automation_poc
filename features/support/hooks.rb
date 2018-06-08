Before do
  @login = LoginPage.new
  @home = HomePage.new
end

Before ('@auth') do
  @login.load
  @login.login('smoke.testing@sovos.com','Sovos123!')
end
