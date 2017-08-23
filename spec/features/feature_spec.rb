require 'spec_helper'
#require_relative './../../app.rb'

feature BookmarkManager do
  context '/links' do
    let(:link1) { 'Google' }
    let(:link2) { 'Facebook' }
    let(:link3) { 'Twitter' }

    scenario 'it lets you see list of links' do
      Link.create(url: 'http//google.com', title: 'Google')
      Link.create(url: 'http//facebook.com', title: 'Facebook')
      Link.create(url: 'http//twitter.com', title: 'Twitter')

      visit '/links'
      expect(page.status_code).to eq 200

      # within 'ul#links' do
        expect(page).to have_text(link1)
        expect(page).to have_text(link2)
        expect(page).to have_text(link3)
      # end
    end
  end
end
