# == Schema Information
#
# Table name: armors
#
#  id                :integer          not null, primary key
#  name              :string
#  type              :string
#  desc              :string
#  acBonus           :integer
#  maxDex            :integer
#  checkPenalty      :integer
#  spellFailure      :integer
#  speed             :string
#  weight            :integer
#  specialProperties :string
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class ArmorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
