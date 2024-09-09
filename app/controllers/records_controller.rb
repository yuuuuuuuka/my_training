class RecordsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
  end

  def new
    @record = Record.new
  end

  def create
    binding.pry
    @record = Record.new(record_params)

    if @record.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.require(:record).permit(:date, :exercise_type, :duration, :reps, :memo).merge(user_id: current_user.id)
  end

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
