# == Schema Information
#
# Table name: shields
#
#  id                :integer          not null, primary key
#  name              :string
#  acBonus           :integer
#  weight            :integer
#  checkPenalty      :integer
#  spellFailure      :integer
#  specialProperties :string
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ShieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
