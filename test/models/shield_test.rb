# == Schema Information
#
# Table name: shields
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  acBonus           :integer
#  weight            :integer
#  checkPenalty      :integer
#  spellFailure      :integer
#  specialProperties :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ShieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
