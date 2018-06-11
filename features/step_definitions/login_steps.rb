When("the user logs with the {string} and {string}") do |email, password|
  @home_page = HomePage.new
  @login_page = LoginPage.new
  # @login_page.load
  @login_page.login(email, password)

end

Then("the user is authenticated") do
  expect(@home_page).to have_user_menu
end

Then("the user should see the message {string}") do |message|
  expect(@login_page.alert.text).to have_content message
end
