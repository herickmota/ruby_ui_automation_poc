Given("that the user navigate to menu:") do |table|
  @nav = table.rows_hash
  @home.navigateTo(@nav)
end

Given("that the user is on Create users Page") do
  @user.load
end

Given("the user click to create users") do
  @user.clickCreateUser
end

Given("the user select the account {string}") do |account|
  @user.selectAccount(account)
end

When("the user Fill all the required information") do |table|
  @user_info = table.hashes
  @user.createUser(@user_info.first)
end

Then("the user can see the message of success {string}") do |message|
  expect(@user.alert_success_message.text).to eql message
end

Then("the user can see the message of error {string}") do |message|
  expect(@user.alert_error_message.text).to eql message
end
