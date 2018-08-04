
require 'github_api'

github = Github.new 

github.repos.list(org: 'goldencorgy').each do |repo|
  puts repo
end

# github.repos.list(org: 'goldencorgy', auto_pagination: true).each do |repo| 
#   puts "forking #{repo['name']}" 
#   github.repos.forks.create("goldencorgy", repo["name"], user: "softwaregravy") rescue nil
# end 
#
# github = Github.new basic_auth: "not my auth token"
