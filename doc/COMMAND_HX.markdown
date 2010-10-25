Create new RVM gemset for project

    rvm gemset create codecache
    rvm use ree-1.8.7-2009.10@codecache

Install Rails

    gem install rails --no-rdoc --no-ri

Create new Rails project skeleton

    cd /path/to/my/workspace/
    rails new codecache -J
    cd codecache/

Setup git

    git init

Open project in my favorite text editor and edit .gitignore

    vim .gitignore

Commit new feature

    git add .
    git ci -m 'Codecache project skeleton'

Edit Gemfile - inventory sqlite and testing Gems including Cucumber, RSpec, Shoulda and factory_girl

    git add .
    git ci -m 'Inventory sqlite and testing Gems'
    bundle

Install Cucumber

    script/rails generate cucumber:install
    git add .
    git commit -m 'Install Cucumber'

Clean up unused Test::Unit directories

    git rm -r test
    git commit -m 'Remove unused Test::Unit directories'

Install RSpec

    script/rails generate rspec:install
    git add .
    git commit -m 'Install RSpec'

Generate Cucumber feature

    script/rails generate cucumber:feature snippet title:string body:text

Setup database

    rake db:create:all
    rake db:migrate

Watch new feature fail

    rake

Generate scaffold

    script/rails generate scaffold snippet title:string body:text --test-framework=rspec --integration-tool=none

Edit /spec/models/snippet_spec.rb, adding specs for Snippet model

    vim spec/models/snippet_spec.rb

Create new table in database

    rake db:migrate

Watch new feature pass

    rake

Commit new feature

    git add .
    git commit -m 'Snippet scaffold'

Generate next Cucumber feature and repeat

