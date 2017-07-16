require 'rails_helper'

RSpec.describe 'The Homepage' do
  it 'shows a message' do
    visit '/'
    expect(page).to have_content 'Let\'s get it done!'
  end

  it 'lets the user see all items' do
    Item.create!(description: 'Wash dog')
    Item.create!(description: 'Buy apples')
    Item.create!(description: 'Make pizza')
    visit '/'
    expect(page).to have_content 'Wash dog'
    expect(page).to have_content 'Buy apples'
    expect(page).to have_content 'Make pizza'
  end

  it 'lets the user delete an item' do
    Item.create!(description: 'Wash dog')
    Item.create!(description: 'Buy apples')
    Item.create!(description: 'Make pizza')
    visit '/'
    page.first('.fa.fa-trash-o').click
    expect(page).to have_content 'Item has been successfully deleted'
  end
end
