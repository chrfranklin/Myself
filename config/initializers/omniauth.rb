Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 435269333225820, '95fbb5d35bb6adab663a21c918023e75'
  
  provider :github, '2fd1de851974f42391da', 'b77afc9e152d02b1c2d866c8a80136ef5962e64a'
           #:scope => 'email,user_birthday,read_stream', :display => 'popup'
end
