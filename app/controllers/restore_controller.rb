class RestoreController < ApplicationController
  def index
    restore("localhost", "wing", "557011", "wing", "files/replaced/production_2014-01-07_10_34_02.sql_localhost_wing.com.sql")
  end
  def restore(host, username, password, dbname, sqlfile)
    cmd = "mysql -u%s -p%s %s -h%s < %s" % [username, password, dbname, host, sqlfile]
    system(cmd)
    @str = cmd
  end
end
