# encoding: utf-8

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
          attr_accessible :email, :password, :password_confirmation, :remember_me, :name
          cattr_accessor :current
          
          # Return user name or user name from email address
          def username
name.blank? ? email.match(/^[^@]+/)[0] : name
          end

end
