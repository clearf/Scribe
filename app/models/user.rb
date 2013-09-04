# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :evaluations, class_name: "RSEvaluation", as: :source
  has_reputation :votes, source: {reputation: :votes, of: :comments}, aggregated_by: :sum
  attr_accessible :comment, :email, :name, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  validates :password, confirmation: true
  validates :password, presence: true, on: :create
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def self.authenticate(name, password)
    user = find_by_name(name)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
