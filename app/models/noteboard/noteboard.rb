module Noteboard
  class Noteboard < ActiveRecord::Base
    belongs_to :user
  end
end
