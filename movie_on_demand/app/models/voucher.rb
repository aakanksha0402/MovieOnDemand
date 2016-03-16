class Voucher < ActiveRecord::Base
  belongs_to :theater
  belongs_to :theater_screen
end
