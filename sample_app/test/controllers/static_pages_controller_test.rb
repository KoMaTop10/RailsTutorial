require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup 
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test 'should_get_root' do 
    get root_url
    assert_response :success
  end

  test 'should_get_home' do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test 'should_get_help' do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should_get_about' do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  test 'should_get_contact' do
    get static_pages_contact_url
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end 
end