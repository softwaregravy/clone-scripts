
require 'github_api'

github = Github.new 

github.repos.list(org: 'goldencorgy').each do |repo|
  puts repo
end
