curl -s https://api.github.com/orgs/[[ORGANIZATION]]/repos?per_page=200 | ruby -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'
