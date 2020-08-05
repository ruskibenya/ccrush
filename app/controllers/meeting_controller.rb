
require "opentok"
opentok = OpenTok::OpenTok.new api_key, api_secret

class MeetingController < ApplicationController


  
  def index
  end

  def show

  end

  def get_new_session(current_date_number) 
    # determine who the next sesssion is by adding 1 
    # and selecting that object from the array 

    token = opentok.generate_token(object.session_id) 

    # return token and session_ID and user info 
    
  end

  def create_new_session(user_id)
    session = opentok.create_session :media_mode => :routed
    session_id = session.session_id
    token = opentok.generate_token(session_id)
    token = session.generate_token({
      :role        => :moderator,
      :expire_time => Time.now.to_i+(7 * 24 * 60 * 60), # in one week
      :data        => 'name=Johnny',
      :initial_layout_class_list => ['focus', 'inactive']
    });

    # create {userId: userId, "sessionId: sessionId "}
    # add to iterable array of objects 
    
    return session_id, token 

    def create_testing_session()
      session = opentok.create_session
      session_id = session.session_id

      token = opentok.generate_token session_id

      token = session.generate_token({
        :role        => :moderator,
        :expire_time => Time.now.to_i+(7 * 24 * 60 * 60), # in one week
        :data        => 'name=Avital',
        :initial_layout_class_list => ['focus', 'inactive']
    });
end
