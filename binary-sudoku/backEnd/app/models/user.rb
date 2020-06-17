class User < ApplicationRecord
    has_many :highscores
    has_many :boards, through: :highscores
end
