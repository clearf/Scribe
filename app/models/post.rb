# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  topic      :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :topic
end
