class Message < ActiveRecord::Base
  Pusher.app_id = 44793
  Pusher.key = '8af1a78c2496c405d491'
  Pusher.secret = '8a0c0b5b6f4d2c6af4e2'

  after_create :send_to_pusher

  def send_to_pusher
  	logger.info "Hola!"
  	Pusher['Chat2013'].trigger("message:create", self.to_json)
  end
  

end
