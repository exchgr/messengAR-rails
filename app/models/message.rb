class Message < ActiveRecord::Base
  belongs_to :user

  attr_accessible :content, :hint, :screenX, :screenY, :yaw, :pitch, :roll, :heading, :latitude, :longitude
end
