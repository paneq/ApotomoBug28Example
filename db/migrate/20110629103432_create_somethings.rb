class CreateSomethings < ActiveRecord::Migration
  def self.up
    create_table :somethings do |t|
      t.string :blah

      t.timestamps
    end
  end

  def self.down
    drop_table :somethings
  end
end
