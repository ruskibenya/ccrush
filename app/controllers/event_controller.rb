class EventController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @hosts = @event.publishers
    @visitors = @event.subscribers

    if @visitors.include?(current_user)
      unless params["pos_counter"]
        if @hosts.include?(current_user)
          @pos_counter = @hosts.index(current_user)
        else
          @pos_counter = @visitors.index(current_user)
        end
      else
        @pos_counter = params["pos_counter"].to_i + 1
      end
    end


  end

  private
  def event_params
      params.require(:event).permit(:next_host)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
