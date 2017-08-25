require 'spec_helper'
require_relative '../../app/app.rb'

feature BookmarkManager do

  context 'links/new' do

    scenario 'it lets you add a link' do
      visit '/links/new'
      fill_in('url', with: 'http://www.makersacademy.com' )
      fill_in('title', with: 'Makers')
      click_button('Add link')
      expect(page).to have_content 'Makers'
    end


    scenario 'it should add a tag to a link' do
      visit '/links/new'
      fill_in('url', with: 'http://www.makersacademy.com' )
      fill_in('title', with: 'Makers')
      fill_in('tags', with: 'study')
      click_button('Add link')

      link = Link.first
      expect(link.tags.map(&:name)).to include 'study'
      end
    end
end
