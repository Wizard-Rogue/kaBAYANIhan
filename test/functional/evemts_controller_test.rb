require 'test_helper'

class EvemtsControllerTest < ActionController::TestCase
  setup do
    @evemt = evemts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evemts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evemt" do
    assert_difference('Evemt.count') do
      post :create, evemt: { details: @evemt.details, end: @evemt.end, img: @evemt.img, orgid: @evemt.orgid, start: @evemt.start, title: @evemt.title, type: @evemt.type, venue: @evemt.venue }
    end

    assert_redirected_to evemt_path(assigns(:evemt))
  end

  test "should show evemt" do
    get :show, id: @evemt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evemt
    assert_response :success
  end

  test "should update evemt" do
    put :update, id: @evemt, evemt: { details: @evemt.details, end: @evemt.end, img: @evemt.img, orgid: @evemt.orgid, start: @evemt.start, title: @evemt.title, type: @evemt.type, venue: @evemt.venue }
    assert_redirected_to evemt_path(assigns(:evemt))
  end

  test "should destroy evemt" do
    assert_difference('Evemt.count', -1) do
      delete :destroy, id: @evemt
    end

    assert_redirected_to evemts_path
  end
end
