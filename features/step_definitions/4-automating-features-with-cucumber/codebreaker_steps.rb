class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def stdout
  @output ||= Output.new
end

Given(/^the secret code is "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I guess "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the mark should be "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(stdout)
  game.start
end

Then(/^I should see "([^"]*)"$/) do |message|
  expect(stdout.messages).to include(message)
end