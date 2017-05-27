
require_relative 'file_sorter.rb'

module DownloadSorter
  VERSION = '0.0.1'

  def self.version
    version
  end

  def self.process_file file_name
    @file_sorter = DownloadSorter::FileSorter.new file_name
    @file_sorter.process
  end
end
