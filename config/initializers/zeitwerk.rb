require 'zeitwerk'

loader = Zeitwerk::Loader.new

# loader.push_dir(Rails.root.join('packages', 'product', 'app', 'ui', 'controllers'))
Dir.glob(Rails.root.join('packages', '*', 'app', 'ui', 'controllers')).each do |path|
  loader.push_dir(path)
end
Dir.glob(Rails.root.join('packages', '*', 'app', 'application')).each do |path|
  loader.push_dir(path)
end
Dir.glob(Rails.root.join('packages', '*', 'app', 'application', 'command', 'handler')).each do |path|
  loader.push_dir(path)
end
Dir.glob(Rails.root.join('packages', '*', 'app', 'domain')).each do |path|
  loader.push_dir(path)
end
Dir.glob(Rails.root.join('packages', '*', 'app', 'infrastructure')).each do |path|
  loader.push_dir(path)
end

loader.setup

puts "Loaded directories:"
loader.dirs.each { |dir| puts dir }

