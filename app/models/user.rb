class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_many :comments

  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.send_enabled_message(self).deliver
  end

  after_create :send_reset_password
  def reset_password_instructions
    UserMailer.reset_password_instructions(self).deliver
  end
end
