class OpenQuestionsController < ApplicationController
  before_action :set_open_question, only: [:show, :update, :destroy]

  # GET /open_questions
  def index
    @open_questions = OpenQuestion.all

    render json: @open_questions
  end

  # GET /open_questions/1
  def show
    render json: @open_question
  end

  # POST /open_questions
  def create
    @open_question = OpenQuestion.new(open_question_params)

    if @open_question.save
      render json: @open_question, status: :created, location: @open_question
    else
      render json: @open_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /open_questions/1
  def update
    if @open_question.update(open_question_params)
      render json: @open_question
    else
      render json: @open_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /open_questions/1
  def destroy
    @open_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_question
      @open_question = OpenQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def open_question_params
      params.require(:open_question).permit(:title, :body)
    end
end
