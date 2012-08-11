require 'hardware'
require 'superenv'

module Homebrew extend self
  def sh
    ENV.deps = %w{libxml2 gettext}
    ENV.setup_build_environment
    ENV['PS1'] = 'brew \[\033[1;32m\]\W\[\033[0m\]$ '
    ohai "Homebrew Build Environment Shell"
    puts "Now when you type `make', hopefully it will work!"
    exec ENV['SHELL'], "-i"
  end
end
