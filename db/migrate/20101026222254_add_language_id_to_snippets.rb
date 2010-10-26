class AddLanguageIdToSnippets < ActiveRecord::Migration
  def self.up
    change_table(:snippets) do |t|
      t.references :language
    end
  end

  def self.down
    change_table(:snippets) do |t|
      t.remove :language_id
    end
  end
end
