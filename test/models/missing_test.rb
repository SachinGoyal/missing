# == Schema Information
#
# Table name: missings
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  image        :string
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

require 'test_helper'

class MissingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
