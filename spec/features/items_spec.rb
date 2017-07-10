require 'rails_helper'

RSpec.describe 'Items' do
  it 'lets user add an item' do
    visit '/'
    click_link 'Add Item'
    fill_in('Description', with: 'Wash dog')
    click_button 'Add it!'
    expect(page).to have_content 'Item added!'
    expect(Item.count).to eq(1)
  end
end
