class ActivityController < ApplicationController
  def index
       @activities = PublicActivity::Activity.all
      # @activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.friend_ids, owner_type: "User")
  end
end
