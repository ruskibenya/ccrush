
require "opentok"

class MeetingController < ApplicationController
  
  OPENTOK = OpenTok::OpenTok.new ENV['api_key'], ENV['api_secret']
  first_meeting = true
  
  def index
  end

  def show
  

    @api_key = ENV['api_key']
    raise
    # if first_meeting {
    #   @session_id = create_new_session
    # } else {
      
    # }
    @session_id = create_testing_session

    @token = OPENTOK.generate_token(@session_id)
    @number = 0 
  end


  private

  def get_new_session(current_date_number) 
    # determine who the next sesssion is by adding 1 
    # and selecting that object from the array 

    # token = opentok.generate_token(object.session_id) 

    # return token and session_ID and user info 
    
  end

  def create_new_session(user_id)
    session = opentok.create_session :media_mode => :routed
    session_id = session.session_id
    token = opentok.generate_token(session_id)

    create {userId: userId, "sessionId: sessionId "}
    add to iterable array of objects 
    
    return session_id, token 
    end

    def create_testing_session()

  

      session = OPENTOK.create_session
      session_id = session.session_id

      return session_id 
      # token = opentok.generate_token(session_id)

    end
end