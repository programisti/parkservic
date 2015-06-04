require 'test_helper'

class TempwsControllerTest < ActionController::TestCase
  setup do
    @tempw = tempws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tempw" do
    assert_difference('Tempw.count') do
      post :create, tempw: { content: @tempw.content, title: @tempw.title }
    end

    assert_redirected_to tempw_path(assigns(:tempw))
  end

  test "should show tempw" do
    get :show, id: @tempw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tempw
    assert_response :success
  end

  test "should update tempw" do
    patch :update, id: @tempw, tempw: { content: @tempw.content, title: @tempw.title }
    assert_redirected_to tempw_path(assigns(:tempw))
  end

  test "should destroy tempw" do
    assert_difference('Tempw.count', -1) do
      delete :destroy, id: @tempw
    end

    assert_redirected_to tempws_path
  end
end
