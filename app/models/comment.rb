# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :string(255)
#  user_id     :integer
#  post_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :description

  has_reputation :votes, source: :user, aggregated_by: :sum


  validates :description, presence: true, allow_blank: false
end
