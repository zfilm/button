class Alarm < ActiveRecord::Base
  validates :sitenr, presence: true
end
