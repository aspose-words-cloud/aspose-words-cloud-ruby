#!/bin/bash
gem install bundler && bundle install && find ./tests -name "*_tests.rb" -maxdepth 4 -type f -exec ruby -W0 {} \;