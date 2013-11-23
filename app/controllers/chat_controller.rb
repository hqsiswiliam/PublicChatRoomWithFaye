class ChatController < ApplicationController
	before_filter :authenticate_user!
  def public_room
  	@public_messages = PublicMessage.all
  end
end
