class ClosedQuestionsController < ApplicationController
  before_action :set_closed_question, only: [:show, :update, :destroy]

  # GET /closed_questions
  def index
    @closed_questions = ClosedQuestion.all

    render json: @closed_questions
  end

  # GET /closed_questions/1
  def show
    render json: @closed_question
  end

  # POST /closed_questions
  def create
    @closed_question = ClosedQuestion.new(closed_question_params)

    if @closed_question.save
      render json: @closed_question, status: :created, location: @closed_question
    else
      render json: @closed_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /closed_questions/1
  def update
    if @closed_question.update(closed_question_params)
      render json: @closed_question
    else
      render json: @closed_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /closed_questions/1
  def destroy
    @closed_question.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_closed_question
      @closed_question = ClosedQuestion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def closed_question_params
      params.require(:closed_question).permit(:title, :option)
    end
end
