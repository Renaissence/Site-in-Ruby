class OpenAnswersController < ApplicationController
  before_action :set_open_answer, only: [:show, :update, :destroy]

  # GET /open_answers
  def index
    @open_answers = OpenAnswer.all

    render json: @open_answers
  end

  # GET /open_answers/1
  def show
    render json: @open_answer
  end

  # POST /open_answers
  def create
    @open_answer = OpenAnswer.new(open_answer_params)

    if @open_answer.save
      render json: @open_answer, status: :created, location: @open_answer
    else
      render json: @open_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /open_answers/1
  def update
    if @open_answer.update(open_answer_params)
      render json: @open_answer
    else
      render json: @open_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /open_answers/1
  def destroy
    @open_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_answer
      @open_answer = OpenAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def open_answer_params
      params.require(:open_answer).permit(:question_id, :content)
    end
end
