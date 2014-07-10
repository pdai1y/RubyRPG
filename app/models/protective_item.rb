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

class ProtectiveItem < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :protective_items
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
