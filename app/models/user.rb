class User < ApplicationRecord
    has_many :user_specialities
    has_many :specialities, through: :user_specialities
    has_many :team_members
    has_many :teams, through: :team_members
end
