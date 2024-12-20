class Thing < ApplicationRecord
  def upvote!
    self.votes += 1
    save!
  end
end
