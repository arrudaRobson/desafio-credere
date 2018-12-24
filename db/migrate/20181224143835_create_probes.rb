class CreateProbes < ActiveRecord::Migration[5.2]
  def change
    create_table :probes do |t|
      t.integer :x, default: 0
      t.integer :y, default: 0
      t.string :face, default: 'D'

      t.timestamps
    end
  end
end
