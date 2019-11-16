require 'test_helper'

class OpenAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @open_answer = open_answers(:one)
  end

  test "should get index" do
    get open_answers_url, as: :json
    assert_response :success
  end

  test "should create open_answer" do
    assert_difference('OpenAnswer.count') do
      post open_answers_url, params: { open_answer: { content: @open_answer.content, question_id: @open_answer.question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show open_answer" do
    get open_answer_url(@open_answer), as: :json
    assert_response :success
  end

  test "should update open_answer" do
    patch open_answer_url(@open_answer), params: { open_answer: { content: @open_answer.content, question_id: @open_answer.question_id } }, as: :json
    assert_response 200
  end

  test "should destroy open_answer" do
    assert_difference('OpenAnswer.count', -1) do
      delete open_answer_url(@open_answer), as: :json
    end

    assert_response 204
  end
end
