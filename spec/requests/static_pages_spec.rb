require 'spec_helper'

describe "Static pages" do
subject { page }
  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', :text => "Sample App")}
    it { should have_selector('title', :text => full_title('')) }
  end

  describe "Help Page" do
    before { visit help_path }
  	it { should have_selector('h1', :text => 'Help')}
    it { should have_selector('title', :text => full_title('Help'))}
  end
  
  describe "About Page" do
    before { visit '/about'}
  	it { should have_selector('h1', :text => 'About')}
  	it { should have_selector('title', :text => full_title('About'))}
  end

  describe "Contact page" do
    before { visit '/contact'}
    it { should have_selector('h1', :text => 'Contact')}
    it { should have_selector('title', :text => full_title('Contact'))}
  end
end
