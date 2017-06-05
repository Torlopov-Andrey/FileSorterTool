require_relative 'lib/file_sorter_tool/version'

Gem::Specification.new do |spec|
  spec.name          = 'file_sorter_tool'
  spec.version       = FileSorterTool.version
  spec.date          = '2017-05-29'
  spec.summary       = "Sort files in selected directory"
  spec.description   = "A simple gem that sorting files in selected directory."
  spec.authors       = [ "Andrey Torlopov" ]
  spec.email         = 'torlopov.andrey@gmail.com'
  spec.homepage      = 'https://github.com/Torlopov-Andrey/FileSorterTool'
  spec.license       = 'MIT'

  spec.files         = %w[
    lib/file_sorter_tool.rb
    lib/file_sorter_tool/file_sorter.rb
    lib/file_sorter_tool/version.rb
  ]

  # spec.requirements = %w[]
  spec.executables  << 'file_sorter_tool'
end
