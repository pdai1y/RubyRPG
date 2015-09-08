# == Schema Information
#
# Table name: protective_items
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  acBonus           :integer
#  weight            :integer
#  specialProperties :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ProtectiveItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
