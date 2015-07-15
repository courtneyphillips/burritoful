class Log < ActiveRecord::Base
  has_many :events
  belongs_to :users


  def calories_consumed
    total = 0
    self.each do |event|
      total = total + event.calories
    end
    total
  end

end
