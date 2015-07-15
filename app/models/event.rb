class Event < ActiveRecord::Base
  belongs_to :log

  def self.calories_consumed(event_type)
    total = 0
    event_type.each do |event|
      total = total + event.calories
    end
    total
  end

  scope :foods, -> { where event_type: "food" }
  scope :exercises, -> { where event_type: "exercise" }

end
