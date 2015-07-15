class Log < ActiveRecord::Base
  has_many :events
  belongs_to :users
end
