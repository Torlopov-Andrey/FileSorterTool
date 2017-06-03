Gem::Specification.new do |spec|
  spec.name          = 'file_sorter_tool'
  spec.version       = '0.3.0'
  spec.date          = '2017-05-29'
  spec.summary       = "Sort files in selected directory"
  spec.description   = "A simple gem that sorting files in selected directory."
  spec.authors       = [ "Andrey Torlopov" ]
  spec.email         = 'torlopov.andrey@gmail.com'
  spec.homepage      = 'https://github.com/Torlopov-Andrey/FileSorterTool'
  spec.license       = 'MIT'

  spec.files         = [
    "lib/file_sorter_tool.rb",
    "lib/file_sorter_tool/file_sorter.rb",
    "Rakefile"
  ]
  spec.requirements = %w[]
  spec.executables.push 'file_sorter_tool'
end