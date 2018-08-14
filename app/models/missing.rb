# == Schema Information
#
# Table name: missings
#
#  id           :integer          not null, primary key
#  profile_id   :integer
#  name         :string
#  age          :string
#  height       :string
#  gender       :string
#  missing_date :date
#  description  :string
#  active       :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Missing < ApplicationRecord
  belongs_to :profile
  has_many :pictures, as: :imageable
end
