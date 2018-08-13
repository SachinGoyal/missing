# == Schema Information
#
# Table name: orphans
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  image       :string
#  video       :string
#  description :string
#  lat         :string
#  long        :string
#  address     :string
#  active      :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Orphan < ApplicationRecord
  belongs_to :user
end
