# == Schema Information
#
# Table name: blogs
#
#  id          :integer          not null, primary key
#  profile_id  :integer
#  tittle      :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Blog < ApplicationRecord
  belongs_to :profile
end
