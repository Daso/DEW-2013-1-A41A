class Tweet < ActiveRecord::Base
  attr_accessible :message, :url, :user

  Twitter.configure do |config|
    config.consumer_key = '3BZ2Fk5yzOXN0QSPRZqiA'
    config.consumer_secret = '1AGkWl2MKX73K5Muop7NMwd5xhUyZkchWzEgAQieAwE'
    config.oauth_token = '344334932-0WFeQD28tyl2NNP45oRg5mIG7X0hPQZvB9hZffZz'
    config.oauth_token_secret = '2dlCgTmslZvQMDmqobi0tITaJ9mtJBamgKrTudCKM'
  end
  def read_message
    return "no hay user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end

  def update_status
  	return "no hay status" if self.message.blank?
  	Twitter.update(self.message)
  end
end
