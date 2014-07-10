# == Schema Information
#
# Table name: virtues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Virtue < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :virtues
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
