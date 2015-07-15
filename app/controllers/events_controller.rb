class EventsController < ApplicationController


  def new
    @log = Log.find(params[:log_id])
    @event = @log.events.new
  end

  def create
    @log = Log.find(params[:log_id])
    @event = @log.events.new(event_params)
    if @event.save
      redirect_to log_path(@log)
    else
      render :new
    end
  end

  def index
    @foods = Event.foods.order(params[:sort])
    @exercises = Event.exercises.order(params[:sort])
  end


  private

  def event_params
     params.require(:event).permit(:name, :event_type, :calories)
  end
end
