# == Schema Information
#
# Table name: feats
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Feat < ActiveRecord::Base
end
