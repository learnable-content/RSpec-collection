# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true

  before_validation -> {email.downcase!}
end
