class Review < ActiveRecord::Base
  # NOTE: We use the 'belongs_to' macro so that we can establish the foreign key relationship to the
  # 'games' table
  belongs_to :game

  # NOTE: This is the SQL statement that is being run by Active Record with the 'belongs_to' macro:
  # SELECT "games".*
  # FROM "games"
  # WHERE "games"."id" = 1
  # LIMIT 1;

  # NOTE: The following section would have been required if we did not use the 'belongs_to'
  # Active Record macro:

  # NOTE: A review belongs to a game:
  # def game
  # 'self' is the 'Review' class instance:
  # Game.find(self.game_id)
  # end
end
