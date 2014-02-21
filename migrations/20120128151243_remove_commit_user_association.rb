require "./" + File.join(File.dirname(__FILE__), "migration_helper")

Sequel.migration do
  up do
    alter_table(:commits) do
      remove_foreign_key :user_id
    end
  end

  down do
    alter_table(:commits) do
      add_foreign_key :user_id, :users, :key => :id
    end
  end
end
