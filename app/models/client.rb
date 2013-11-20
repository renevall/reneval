# == Schema Information
#
# Table name: clients
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  fullname            :string(255)
#  ruc                 :string(14)
#  legalrepresentative :string(255)
#  address             :string(255)
#  web                 :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

class Client < ActiveRecord::Base


  validates :name, presence: true, length: { in: 3..25 }, uniqueness: { case_sensitive: false }
  validates :fullname, presence: true
  validates :ruc, presence: true
end
