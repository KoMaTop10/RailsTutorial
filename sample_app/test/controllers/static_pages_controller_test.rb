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
    get home_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test 'should_get_help' do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should_get_about' do
    get about_path
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  test 'should_get_contact' do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end 
end
