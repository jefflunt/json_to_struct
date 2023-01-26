Gem::Specification.new do |s|
  s.name        = "json_to_struct"
  s.version     = "1.0.0"
  s.description = "converts a JSON String to a nested Struct"
  s.summary     = "converts a JSON String to a tree of nested Struct objects, so you can use dot notation, using the Oj gem"
  s.authors     = ["Jeff Lunt"]
  s.email       = "jefflunt@gmail.com"
  s.files       = ["lib/json_to_struct.rb"]
  s.homepage    = "https://github.com/jefflunt/json_to_struct"
  s.license     = "MIT"
  s.add_runtime_dependency "oj", [">= 0"]
end
