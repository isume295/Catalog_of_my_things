require 'json'
require 'pry'
    def save_file(file_name, data)
        File.write(file_name, JSON.pretty_generate(data))
    end
