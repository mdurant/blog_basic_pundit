require 'test_helper'

class MyPostsControllerTest < ActionController::TestCase
  setup do
    @my_post = my_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_post" do
    assert_difference('MyPost.count') do
      post :create, my_post: { comment: @my_post.comment, post: @my_post.post }
    end

    assert_redirected_to my_post_path(assigns(:my_post))
  end

  test "should show my_post" do
    get :show, id: @my_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_post
    assert_response :success
  end

  test "should update my_post" do
    patch :update, id: @my_post, my_post: { comment: @my_post.comment, post: @my_post.post }
    assert_redirected_to my_post_path(assigns(:my_post))
  end

  test "should destroy my_post" do
    assert_difference('MyPost.count', -1) do
      delete :destroy, id: @my_post
    end

    assert_redirected_to my_posts_path
  end
end
