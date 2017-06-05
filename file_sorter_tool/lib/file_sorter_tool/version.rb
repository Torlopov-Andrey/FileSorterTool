require 'singleton'

module FileSorterTool
  class Version
    include Singleton

    MAJOR = '0'
    MINOR = '3'
    PATCH = '8'

    def current_version
      [MAJOR, MINOR, PATCH].join(".")
    end
  end

  def self.version
    Version.instance.current_version
  end
end
