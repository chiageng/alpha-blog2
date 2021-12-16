class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :extra_information, :text
  end
end
