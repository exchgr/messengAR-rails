class Message < ActiveRecord::Base
  attr_accessible :content, :hint, :screenX, :screenY, :yaw, :pitch, :roll, :heading, :latitude, :longitude
end
