require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "titulo correcto" do
      get 'home'
      response.should have_selector("title",
        :content => "Tutorial de Ruby on Rail | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "titulo correcto" do
      get 'contact'
      response.should have_selector("title",
        :content => "Tutorial de Ruby on Rail | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "titulo correcto" do
      get 'about'
      response.should have_selector("title",
        :content => "Tutorial de Ruby on Rail | About")
    end
  end


end
