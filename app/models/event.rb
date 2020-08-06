class Event < ApplicationRecord
  belongs_to :user

  serialize :subscribers
  serialize :publishers


end
