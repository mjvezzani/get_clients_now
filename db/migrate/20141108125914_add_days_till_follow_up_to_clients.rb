class AddDaysTillFollowUpToClients < ActiveRecord::Migration
  def change
    add_column :clients, :days_till_follow_up, :date
  end
end
