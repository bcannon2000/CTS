module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "35JxzOPlUXhzwohuXd7pabmag"
      config.consumer_secret     = "euXXabu09i1qt5gduCC028PH7C20ZO1pGDJMpg9eJLSEv9Yy0X"
      config.access_token        = "3303069601-EBJDEPsFxAu36AyvtfyZUmrQyFsmWV4bf7NGCS1"
      config.access_token_secret = "kXOuwcuA0zgAaO7hBOVdhmvVPy2gwjWNQrd08Zl9hLSnR"
    end
    
    client.search("#PCMasterRace", result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end