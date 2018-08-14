# == Schema Information
#
# Table name: orphans
#
#  id          :integer          not null, primary key
#  profile_id  :integer
#  video       :string
#  description :string
#  latitude    :string
#  longitude   :string
#  address     :string
#  pincode     :string
#  active      :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class OrphanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
