# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  age          :string
#  gender       :string
#  address      :string
#  share_detail :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Profile < ApplicationRecord
  has_many :missings
  has_many :orphans
  has_many :blogs
  belongs_to :user

end
