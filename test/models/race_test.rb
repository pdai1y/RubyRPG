# == Schema Information
#
# Table name: races
#
#  id              :integer          not null, primary key
#  name            :string
#  racialModDesc   :string
#  favoredClass    :string
#  raceDescription :string
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
