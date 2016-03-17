class Screening < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  belongs_to :theatre
  belongs_to :offer
end
