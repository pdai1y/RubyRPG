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

class Race < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :races
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
