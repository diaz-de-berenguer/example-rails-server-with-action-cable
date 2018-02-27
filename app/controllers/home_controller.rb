class HomeController < ApplicationController
  def welcome
  	render html: "<a href='/send'><p>Send a message</p></a>".html_safe
  end

  def send_message
  	ActionCable.server.broadcast 'messages', {
  		message: 'Sent from API using Action Cable - ' + Time.now.to_s,
  		username: [ "Bob", "Mick", "Jon", "Diego" ].sample
  	}

  	redirect_to root_path
  end
end
