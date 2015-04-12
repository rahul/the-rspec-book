class CucumberGreeter
  def greet
    'Hello Cucumber!'
  end
end

Given(/^a greeter$/) do
  @greeter = CucumberGreeter.new
end

When(/^I sent it the greet message$/) do
  @message = @greeter.greet
end

# Commented to not clash with mocked STDOUT in codebreaker tests
# Then(/^I should see "([^"]*)"$/) do |greeting|
#   expect(@message).to eql(greeting)
# end