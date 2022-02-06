class AtheletesBelongToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :athletes, :team, null: false, foreign_key: true
  end
end
