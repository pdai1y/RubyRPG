# == Schema Information
#
# Table name: races
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  racialModDesc   :string(255)
#  favoredClass    :string(255)
#  raceDescription :string(255)
#  strMod          :integer
#  dexMod          :integer
#  intMod          :integer
#  wisMod          :integer
#  charMod         :integer
#  conMod          :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class RaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
