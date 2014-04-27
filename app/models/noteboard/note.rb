module Noteboard
  class Note < ActiveRecord::Base
    belongs_to :noteboard  
    #Need a before call back that makes sure a poster_id
    #is a user. And that the noteboard_id is a real noteboard
  end
end
