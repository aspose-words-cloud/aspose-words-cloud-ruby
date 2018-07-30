#!/bin/bash
find ./tests -name "*_tests.rb" -maxdepth 4 -type f -exec ruby --junit -- junit-filename="testReports/report.xml" -W0 {} \;