class TheaterStaff < ActiveRecord::Base
  belongs_to :user
  belongs_to :theater
  belongs_to :staff_permission
end
