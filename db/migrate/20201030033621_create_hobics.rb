class CreateHobics < ActiveRecord::Migration[6.0]
  def change
    create_table :hobics do |t|

      t.timestamps
    end
  end
end
