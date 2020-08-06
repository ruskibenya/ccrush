require "opentok"

class EventController < ApplicationController
  OPENTOK = OpenTok::OpenTok.new ENV['api_key'], ENV['api_secret']

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
    @api_key = ENV['api_key']

    @hosts = @event.publishers
    @visitors = @event.subscribers

    if @visitors.include?(current_user)
      unless params["date_counter"]
        @date_counter = @visitors.index(current_user)
      else
        @date_counter = params["date_counter"].to_i + 1
      end
      @current_date = @hosts[@date_counter]
      @session_id = get_next_session(@current_date)
      @token = OPENTOK.generate_token(@session_id)

    else
      @session_id = create_new_session
      @token = OPENTOK.generate_token(@session_id)
    end

    

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

  def create_new_session()
    # session = OPENTOK.create_session
    # session_id = session.session_id
    # current_user.session_id = session_id
    # current_user.save
    
    puts current_user.session_id 

    return current_user.session_id 
    # token = opentok.generate_token(session_id)
  end

  def get_next_session(current_date)
    @session_id = current_date.session_id 
  end
end
