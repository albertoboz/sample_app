class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :comments

  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.send_welcome_message(self).deliver
  end

end
