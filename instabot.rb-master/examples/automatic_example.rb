# lib = File.expand_path('../../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'instabot'

Config.setup do |set|
  set.username              = 'free_followers_for_u__0'
  set.password              = 'aftab101'
  set.tags                  = ['beautiful','love']
  
  # set.use_proxy            = true # => it's important to enable the proxy usage
  # set.proxy                = ["localhost",8888] # without username and password
  # set.proxy                = ["localhost",8000,"USERNAME","PASSWORD"] # with username and password

  # set.use_tor               = true # default is false
  # set.change_ip_per_actions = # => under construction ...


  set.wait_per_action       = 3
  set.max_follow_per_day    = 190
  set.max_unfollow_per_day  = 100
  set.max_like_per_day      = 50
  set.max_comment_per_day   = 50

  set.print_banner          = true
  set.log_status            = true
  set.infinite_tags         = true
  set.add_tag_per_post      = 5
  set.pre_load              = false

  set.unwanted_list        = ["_id","free_","free"]
  set.white_list_users     = ["john","alex","nick"]



  set.comments             = [
    %w[free followers],
    %w[free followerss],
    %w[free followerss],
    %w[free followers],
    %w[free folowers]
  ]
end

bot = Instabot.new
bot.mode(:infinite) # => :cleanup, :infinite, ...


