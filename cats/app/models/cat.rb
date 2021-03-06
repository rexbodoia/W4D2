# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  sex         :string(1)        not null
#  description :text             not null
#

class Cat < ApplicationRecord
  validates :name, :sex, :description, presence: true

  has_many :rental_requests,
    foreign_key: :cat_id,
    class_name: :CatRentalRequest
end
