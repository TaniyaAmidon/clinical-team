class User < ApplicationRecord
    has_many :user_specialities, dependent: :destroy
    has_many :specialities, through: :user_specialities
    has_many :team_members, dependent: :destroy
end
