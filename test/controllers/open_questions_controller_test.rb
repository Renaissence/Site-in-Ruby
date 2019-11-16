require 'test_helper'

class OpenQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_question = open_questions(:one)
  end

  test "should get index" do
    get open_questions_url, as: :json
    assert_response :success
  end

  test "should create open_question" do
    assert_difference('OpenQuestion.count') do
      post open_questions_url, params: { open_question: { body: @open_question.body, title: @open_question.title } }, as: :json
    end

    assert_response 201
  end

  test "should show open_question" do
    get open_question_url(@open_question), as: :json
    assert_response :success
  end

  test "should update open_question" do
    patch open_question_url(@open_question), params: { open_question: { body: @open_question.body, title: @open_question.title } }, as: :json
    assert_response 200
  end

  test "should destroy open_question" do
    assert_difference('OpenQuestion.count', -1) do
      delete open_question_url(@open_question), as: :json
    end

    assert_response 204
  end
end
