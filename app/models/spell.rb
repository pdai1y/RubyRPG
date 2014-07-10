# == Schema Information
#
# Table name: spells
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Spell < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :spells
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
