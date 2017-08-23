require 'spec_helper'
require_relative './../../app/app.rb'

feature BookmarkManager do

  context 'links/new' do

    scenario 'it lets you add a link' do
      visit '/links'
      fill_in('url', with: 'http://www.makersacademy.com' )
      fill_in('title', with: 'Makers')
      click_button('Add link')
      expect(page).to have_content 'Makers'
    end
  end
end
