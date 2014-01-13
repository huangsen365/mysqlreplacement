class MysqldumpController < ApplicationController
  def index
    mysqldump
  end
  def mysqldump
    time = Time.new
    name = time.strftime("production_%Y-%m-%d_%H_%M_%S") + ".sql"
    @str = "Dump completed as " + name.to_s
    system("mysqldump -uroot -proot mysql > files/#{name}")
  end
end
