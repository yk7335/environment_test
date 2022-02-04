# location: spec/feature/integration_spec.rb
require 'rails_helper'
=begin
RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with an author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with an author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    file_in 'Price', with: "10.00"
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end
=end
=begin
begin
RSpec.describe 'Creating a book with an author and title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter J. K. Rowling')

  end
end
end
=end
RSpec.describe 'Creating a book with an title, author, price and date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J. K. Rowling'
    fill_in 'Price', with: 10.00
    select 'April', :from => 'book_published_date_2i'
    select '24', :from => 'book_published_date_3i'
    select '2000', :from => 'book_published_date_1i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J. K. Rowling')
    expect(page).to have_content(10.00)
    expect(page).to have_content('2000-04-24')

  end
end
