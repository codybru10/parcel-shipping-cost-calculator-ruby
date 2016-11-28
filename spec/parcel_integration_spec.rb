require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the cost to ship', {:type => :feature}) do

  it('processes the user input and returns the cost to ship') do
    visit('/')
    fill_in('height', :with => 4)
    fill_in('length', :with => 2)
    fill_in('width', :with => 4)
    fill_in('weight', :with => 20)
    click_button('Find Cost to Ship')
    expect(page).to have_content(16)
  end

end
