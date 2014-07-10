# == Schema Information
#
# Table name: armors
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  type              :string(255)
#  desc              :string(255)
#  acBonus           :integer
#  maxDex            :integer
#  checkPenalty      :integer
#  spellFailure      :integer
#  speed             :string(255)
#  weight            :integer
#  specialProperties :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Armor < ActiveRecord::Base
end
