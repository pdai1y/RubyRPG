# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  lvl        :integer
#  race       :string(255)
#  virtue     :string(255)
#  alignment  :string(255)
#  size       :string(255)
#  str        :integer          default(0)
#  strMod     :integer          default(0)
#  dex        :integer          default(0)
#  dexMod     :integer          default(0)
#  con        :integer          default(0)
#  conMod     :integer          default(0)
#  int        :integer          default(0)
#  intMod     :integer          default(0)
#  wis        :integer          default(0)
#  wisMod     :integer          default(0)
#  char       :integer          default(0)
#  charMod    :integer          default(0)
#  HP         :integer          default(0)
#  AC         :integer          default(0)
#  initMod    :integer          default(0)
#  BAB        :integer          default(0)
#  spellRes   :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
	belongs_to :user, foreign_key: 'user_id', :inverse_of => :players
	accepts_nested_attributes_for :user, :allow_destroy => true

	RailsAdmin.config {|c| c.label_methods << :name}
end
