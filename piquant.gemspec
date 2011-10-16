Gem::Specification.new do |gem|
  gem.name     = 'piquant'
  gem.version  = '0.0.0'
  gem.summary  = 'Piquant: Raw Salad Ruby bindings'
  gem.homepage = 'https://github.com/chastell/piquant'
  gem.author   = 'Piotr Szotkowski'
  gem.email    = 'chastell@chastell.net'

  gem.files       = `git ls-files -z`.split "\0"
  gem.executables = `git ls-files -z -- bin/*`.split("\0").map { |file| File.basename file }
  gem.test_files  = `git ls-files -z -- spec/*`.split "\0"

  gem.add_development_dependency 'minitest', '>= 2.3'
  gem.add_development_dependency 'rake'
end
