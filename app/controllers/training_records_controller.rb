class TrainingRecordsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
  end

  def new
    @training_record = TrainingRecord.new
  end

  def create
    @training_record = TrainingRecord.new

    if @training_record.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.require(:training_record).permit(:date, :exercise_type, :duration, :reps, :memo).merge(user_id: current_user.id)
  end

  def move_to_index
    return if user_signed_in?

    redirect_to action: :index
  end
end
