class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  has_many :articles
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  
  def password
    @password
  end
  
  def password=(pass)
    return unless pass
    @password = pass
    generte_password(pass)
  end
  
  
   
  private
    def create_remember_token
      #self.remember_token = SecureRandom.urlsafe_base64
    end
    
    def generte_password(pass)
      token =Array.new(10){rand(1024).to_s(36)}.join      
      self.remember_token = token
      self.password_digest= Digest::SHA256.hexdigest(pass+token)
    end
    
    def self.checking(userInfo,pass)    
      if Digest::SHA256.hexdigest(pass+userInfo['remember_token']) ==  userInfo['password_digest']
        return true
      else
        return false 
      end
    end
    
end
