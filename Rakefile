require_relative 'config/application'

Rails.application.load_tasks

Rake::Task['assets:clean'].enhance do
  FileUtils.remove_dir('node_modules', true)
  FileUtils.remove_dir('vendor/javascript', true)
end
