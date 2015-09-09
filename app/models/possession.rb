# == Schema Information
#
# Table name: possessions
#
#  id         :integer          not null, primary key
#  name       :string
#  desc       :string
#  weight     :string
#  created_at :datetime
#  updated_at :datetime
#

class Possession < ActiveRecord::Base
	# belongs_to :player, foreign_key: 'player_id', :inverse_of => :possessions
	# accepts_nested_attributes_for :player, :allow_destroy => true
end
