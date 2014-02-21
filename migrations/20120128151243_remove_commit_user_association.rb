require "./" + File.join(File.dirname(__FILE__), "migration_helper")

Sequel.migration do
  up do
    alter_table(:commits) do
      drop_constraint :commits_ibfk_2, :type => :foreign_key
      drop_column :user_id
      # when updatting squeel use:
      # drop_foreign_key :user_id
    end
  end

  down do
    alter_table(:commits) do
      add_foreign_key :user_id, :users, :key => :id
    end
  end
end
