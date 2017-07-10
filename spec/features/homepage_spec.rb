require 'rails_helper'

RSpec.describe 'The Homepage' do
  it 'shows a message' do
    visit '/'
    expect(page).to have_content 'Hello World!'
  end


end
