class AddTrackableUrlsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sampleJSONcolumn, :jsonb, default: '{}'
  end
end
