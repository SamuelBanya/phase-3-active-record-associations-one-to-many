class Game < ActiveRecord::Base
  # NOTE: This uses the 'has_many' macro to establish the relationship that the single game
  # has many reviews associated with it:
  has_many :reviews

  # NOTE: Without the 'has_many' Active Record macro, this would has been the resulting code:
  # def reviews
  # Review.where(game_id: self.id)
  # end

  # NOTE: This would have been the resulting SQL statements that would have been required
  # SELECT "reviews."*
  # FROM "reviews"
  # WHERE "reviews"."game_id" = 1
end
