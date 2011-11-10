So far so good. Here is the list of problems I've encoutered with setting up latest rails on (partially) clean Ubuntu 10.04 box:

Install sublime:

    sudo add-apt-repository ppa:webupd8team/sublime-text-2
    sudo apt-get update
    sudo apt-get install sublime-text-2

Install git:

    sudo apt-get install git-core

Install rvm from directions found [here](http://beginrescueend.com/)

Read `rvm notes` and use `apt-get` command from section for MRI & ree rubies

Install ruby:

    rvm install 1.9.2

Install sqlite3:

    sudo apt-get install libsqlite3-dev

Install C++ compiler (needed for `therubyracer` gem):

    sudo apt-get install g++

Install gem bundler

    gem install bundler

Install rails

    gem install rails

Create new project

    mkdir -p ~/projects/nifty-notes
    rails new ~/projects/nifty-notes

Init git repo there

    git init ~/projects/nifty-notes

Whoops. Edit `~/projects/nifty-notes/Gemfile` and add the following string to the end of the file:

    gem 'therubyracer'

Uncomment `gem 'sqlite3'` string in `Gemfile`

Install gems to the project dir (for safety)

    cd ~/projects/nifty-notes/
    bundle install --path vendor/bundle

Add `vendor/bundle` path to the `.gitignore` file

Set an alias for `bundle exec`:

    alias be='bundle exec'

Phew! Almost there. So now you should (probably) be able to start rails server like this:

    be rails
