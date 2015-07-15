class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def new
    @log = Log.new
  end

  def create
    #create under User class when authentication implemented.
    @log = Log.new(log_params)
    if @log.save
      redirect_to log_path(@log)
    else
      render :new
    end
  end

 def show
   @log = Log.find(params[:id])
   @exercises = @log.events.exercises
   @calories_exercise = Event.calories_consumed(@exercises)
   @foods = @log.events.foods
   @calories_food = Event.calories_consumed(@foods)


 end


  private

  def log_params
    params.require(:log).permit(:date)
  end


end
