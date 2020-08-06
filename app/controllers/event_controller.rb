class EventController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @hosts = @event.publishers
    @visitors = @event.subscribers

    if @visitors.include?(current_user)
      unless params["date_counter"]
        if @hosts.include?(current_user)
          @date_counter = @hosts.index(current_user)
        else
          @date_counter = @visitors.index(current_user)
        end
      else
        @date_counter = params["date_counter"].to_i + 1
      end
    end

    @session_owner = @hosts[@date_counter]

    if @date_counter == @event.publishers.length
      redirect_to event_end_path
    end
  end

  def end
  end

  private
  def event_params
      params.require(:event).permit(:date_counter)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
