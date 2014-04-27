module Noteboard
  class PosterValidator < ActiveModel::Validator
    def validate(record)
      user = User.find(record.poster_id)
      if user.nil?
        record.errors[:poster] = "poster_id does not map to a user in the database"
      end
    end
  end
  class NoteboardValidator < ActiveModel::Validator
    def validate(record)
      board = Noteboard::Noteboard.find(record.noteboard_id)
      if board.nil?
        record.errors[:board] = "noteboard_id does not map to a noteboard in the database"
      end
    end
  end
  class Note < ActiveRecord::Base
    belongs_to :noteboard  
    before_save :default_settings

    #Makes sure the noteboard exists
    validates_with PosterValidator
    #Makes sure the user exists
    validates_with NoteboardValidator
    def default_settings
    end
  end
end
