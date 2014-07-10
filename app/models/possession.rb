# == Schema Information
#
# Table name: possessions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  weight     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Possession < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :possessions
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
