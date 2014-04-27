module Noteboard
  class Noteboard < ActiveRecord::Base
    belongs_to :user
    has_many :notes
  end
end
