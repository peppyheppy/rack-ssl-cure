Gem::Specification.new do |s|
  s.name        = 'rack-ssl-cure'
  s.author      = 'Paul Hepworth'
  s.email       = 'paul<dot>hepworth<at>peppyheppy<dot>com'
  s.version     = '0.0.1'
  s.homepage    = 'https://github.com/peppyheppy/rack-ssl-cure'
  s.date        = '2012-05-11'
  s.summary     = "Cures the damange done by rack-ssl when it set the Strict-Transport-Security header to a year."
  s.description = ""
  s.files       = s.files = `git ls-files`.split("\n")
  s.add_development_dependency "rspec", "2.6.0"
end

