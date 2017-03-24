class CreateTashes < ActiveRecord::Migration[5.0]
  def change
    create_table :tashes do |t|
      t.text :content

      t.timestamps
    end
  end
end
