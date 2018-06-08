Given("that I navigate to menu:") do |table|
  @nav = table.rows_hash
  puts @nav[:menu]
  @home.searchMenu(@nav[:menu])
  # @home.searchMenuItem(@nav[:item])


end

Given("I click to create users") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I select the Account") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I Fill all the required information") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can see the message") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
