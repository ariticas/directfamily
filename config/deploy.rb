append :linked_files, "config/database.yml", "config/credentials.yml.enc", "config/master.key", ".env"

set :rvm_custom_path, '/usr/local/rvm'

set :rvm_ruby_version, '2.6.3@rails6.0.3'


set :default_env, { path: "/usr/share/rvm/rubies/ruby-2.6.3/bin/ruby:$PATH" }
