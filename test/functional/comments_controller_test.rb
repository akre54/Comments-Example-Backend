require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { author_id: @comment.author_id, content: @comment.content, qualification: @comment.qualification }
    end

    assert_response 201
  end

  test "should show comment" do
    get :show, id: @comment
    assert_response :success
  end

  test "should update comment" do
    put :update, id: @comment, comment: { author_id: @comment.author_id, content: @comment.content, qualification: @comment.qualification }
    assert_response 204
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_response 204
  end
end
