require 'test_helper'

class ClosedQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @closed_question = closed_questions(:one)
  end

  test "should get index" do
    get closed_questions_url, as: :json
    assert_response :success
  end

  test "should create closed_question" do
    assert_difference('ClosedQuestion.count') do
      post closed_questions_url, params: { closed_question: { option: @closed_question.option, title: @closed_question.title } }, as: :json
    end

    assert_response 201
  end

  test "should show closed_question" do
    get closed_question_url(@closed_question), as: :json
    assert_response :success
  end

  test "should update closed_question" do
    patch closed_question_url(@closed_question), params: { closed_question: { option: @closed_question.option, title: @closed_question.title } }, as: :json
    assert_response 200
  end

  test "should destroy closed_question" do
    assert_difference('ClosedQuestion.count', -1) do
      delete closed_question_url(@closed_question), as: :json
    end

    assert_response 204
  end
end
