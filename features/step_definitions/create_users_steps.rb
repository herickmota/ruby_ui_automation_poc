Given("that I navigate to menu:") do |table|
  @nav = table.rows_hash
  @home.navigateTo(@nav)
end

Given("I click to create users") do
  @user.clickCreateUser
end

Given("I select the Account {string}") do |account|
  @user.selectAccount(account)
end

When("I Fill all the required information") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can see the message") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
