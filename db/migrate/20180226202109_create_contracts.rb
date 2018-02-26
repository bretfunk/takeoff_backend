class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.references :user, foreign_key: true
      t.string :owner
      t.string :description
      t.integer :moneyGoal
      t.integer :timeGoal
      t.integer :balance
      t.integer :start

      t.timestamps
    end
  end
end
