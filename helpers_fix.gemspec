# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "rails_helpers_fix"
  s.summary = "Quick fix to include plugin's helpers for rails 3.0.0"
  s.description = "Quick fix to include plugin's helpers for rails 3.0.0"
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.1"
end
