class CreateRecruits < ActiveRecord::Migration
  def change
    create_table :recruits do |t|
      t.string :name

      t.timestamps
    end
  end
end
