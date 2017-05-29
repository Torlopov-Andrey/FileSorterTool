require_relative 'file_sorter_tool/file_sorter.rb'

module FileSorterTool
  VERSION = '0.2.1'

  def self.version
    version
  end

  def self.process_file file_name
    @file_sorter = FileSorterTool::FileSorter.new file_name
    @file_sorter.process
  end

  def self.process_dir path
    Dir.chdir(path)
    Dir['*'].each.with_index do |file, index|
      FileSorterTool::process_file file
    end
    puts "Files sorting success..."
  end
end
