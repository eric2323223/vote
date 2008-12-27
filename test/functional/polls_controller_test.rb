require 'test_helper'

class PollsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:polls)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_poll
    assert_difference('Poll.count') do
      post :create, :poll => { }
    end

    assert_redirected_to poll_path(assigns(:poll))
  end

  def test_should_show_poll
    get :show, :id => polls(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => polls(:one).id
    assert_response :success
  end

  def test_should_update_poll
    put :update, :id => polls(:one).id, :poll => { }
    assert_redirected_to poll_path(assigns(:poll))
  end

  def test_should_destroy_poll
    assert_difference('Poll.count', -1) do
      delete :destroy, :id => polls(:one).id
    end

    assert_redirected_to polls_path
  end
end
