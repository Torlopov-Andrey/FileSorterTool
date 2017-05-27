#!/bin/bash
cwd=$(pwd)
#Path to folder where locate 'Rakefile', for example '~/Tools/downloads_sorter/'
#cd PATH
rake ds:sort[$cwd]
