# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc 'Sets a project database up.'
task :project_setup do
    system('rake db:create')
    system('rake db:migrate')
    system('rake db:test:prepare')
    system('rake db:seed')
    system('rails s')
end