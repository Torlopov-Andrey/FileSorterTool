require 'active_support/core_ext/string'
require 'fileutils'

module FileSorterTool

  class FileSorter

    def process
      return if File.directory?(@from_path)
      to_file_path = "#{@to_dir_path}/#{@from_file}"
      create_directory

      new_file_name = get_new_file_name(to_file_path, @from_file)
      rename_and_move_files(new_file_name)
    end

    private

    def initialize file_name
      @from_file = File.basename(file_name)
      @from_path = File.absolute_path(file_name)

      ext_name = File.extname(@from_file)
        if ext_name.length > 1
          l = ext_name.length
          @to_dir_name = ext_name[1..l]
        else
          @to_dir_name = "unknown"
        end
        @to_dir_path = File.dirname(@from_path) + '/' + @to_dir_name
    end

    def create_directory
      unless File.directory?(@to_dir_path)
        puts "Create directory #{@to_dir_name}"
        FileUtils.mkdir_p(@to_dir_path)
      end
    end

    def get_new_file_name to_path, file_name
      to_full_path = to_path
      new_file_name = file_name
      if File.exist?(to_full_path)
        i = 1
        loop do
          l = file_name.length - @to_dir_name.length - 2
          new_file_name = "#{file_name[0..l]}_#{i}.#{@to_dir_name}"
          to_full_path =  "#{File.dirname(@from_path)}/#{@to_dir_name}/#{new_file_name}"
          break unless File.exist?("#{to_full_path}")
          i += 1
        end
      end
      new_file_name
    end

    def rename_and_move_files new_file_name
      unless @from_file == new_file_name
        FileUtils.mv(@from_file, new_file_name)
        p "dup file [#{@from_file}] renamed into [#{new_file_name}]"
      end
      FileUtils.mv("#{File.dirname(@from_path)}/#{new_file_name}", @to_dir_path)
    end

  end
end
