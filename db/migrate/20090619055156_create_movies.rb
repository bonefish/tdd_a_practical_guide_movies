class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.column "name", :string, :limit => 255, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
