class ReplaceController < ApplicationController
  def index
    replace("production_2014-01-07_10_34_02.sql", "localhost", "wing.com")
  end
  def replace(filename, old_string, new_string)
    path = "files/" + filename
    text = File.read(path)
    replace = text.gsub(old_string, new_string)
    newfilename = "%s_%s_%s" % [filename, old_string, new_string]
    new_path = "files/replaced/%s.sql" % newfilename
    File.open(new_path, 'w') {|file| file.puts replace}
    @str = new_path
  end
end
