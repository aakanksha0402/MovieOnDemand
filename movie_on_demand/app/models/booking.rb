class Booking < ActiveRecord::Base
  belongs_to :screening
  belongs_to :user
end
