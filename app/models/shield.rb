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

class Shield < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :shields
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
