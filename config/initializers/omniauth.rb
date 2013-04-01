Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, 435269333225820, '95fbb5d35bb6adab663a21c918023e75'
  provider :facebook, '435269333225820', '95fbb5d35bb6adab663a21c918023e75'
           #:scope => 'email,user_birthday,read_stream', :display => 'popup'
end
