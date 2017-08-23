require 'spec_helper'
require_relative './../../app/app.rb'


feature BookmarkManager do
  context '/links' do
    let(:link1) { 'Google' }

    scenario 'it lets you see list of links' do
      Link.create(url: 'http//google.com', title: 'Google')

      visit '/links'
      expect(page.status_code).to eq 200

       within 'ul#links' do
        expect(page).to have_text(link1)
       end
    end
  end
end

#
#
# DatabaseCleaner.cleaning do
#   dirty_the_db
# end
