class Thing < ApplicationRecord
  def upvote!
    self.votes += 1
    if save!
      broadcast_upvote
    end
  end

  private
    def broadcast_upvote
      broadcast_replace_to "votes",
        target: "votes_thing_#{id}",
        partial: "things/votes"
    end
end
