# == Schema Information
#
# Table name: feats
#
#  id         :integer          not null, primary key
#  name       :string
#  desc       :string
#  created_at :datetime
#  updated_at :datetime
#

class Feat < ActiveRecord::Base
end
