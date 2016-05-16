require 'rails_helper'

RSpec.describe "movies/new", :type => :view do
  before(:each) do
    assign(:movie, Movie.new(
      :title => "MyString",
      :description => "MyText",
      :movie_length => "MyString",
      :avatar => "MyString",
      :youtube_url => "MyString",
      :release_year => "MyString"
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input#movie_title[name=?]", "movie[title]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_movie_length[name=?]", "movie[movie_length]"

      assert_select "input#movie_avatar[name=?]", "movie[avatar]"

      assert_select "input#movie_youtube_url[name=?]", "movie[youtube_url]"

      assert_select "input#movie_release_year[name=?]", "movie[release_year]"
    end
  end
end