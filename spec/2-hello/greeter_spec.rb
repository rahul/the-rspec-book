class Greeter
  def greet
    'Hello RSpec!'
  end
end

describe 'RSpec Greeter' do
  it "should say 'Hello RSpec! when it receives the greet() message" do
    greeter = Greeter.new
    message = greeter.greet
    expect(message).to eq('Hello RSpec!')
  end
end