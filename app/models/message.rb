class Message < ActiveRecord::Base
  attr_accessible :content, :hint, :imageURL, :screenX, :screenY, :yaw, :pitch, :roll
end
