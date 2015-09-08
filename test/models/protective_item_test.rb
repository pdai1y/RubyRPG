# == Schema Information
#
# Table name: protective_items
#
#  id                :integer          not null, primary key
#  name              :string
#  acBonus           :integer
#  weight            :integer
#  specialProperties :string
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ProtectiveItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
