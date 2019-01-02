


# require 'sqlite3'
#
#  db = SQLite3::Database.new('raga.db')
#  puts "creating a table"
#  rows = db.execute <<-SQL
#             create table Ragatables(
#             id int primary key not null,
#             name text not null,
#             scale text not null,
#             melakarta int not null
#           );
#        SQL
#
# #puts rows
# #puts rows.inspect
#
#
#
#
#
#
#
#
#
require 'sqlite3'
#
db = SQLite3::Database.open('raga.db')
#
# #puts "inserting a row"
#   db.execute "INSERT INTO Ragatables VALUES (1,'Kanakangi', 'S R1 G1 M1 P D1 N1 S', 1)"
#  db.execute "INSERT INTO Ragatables VALUES (2,'Ratnangi', 'S R1 G1 M1 P D1 N2 S', 2)"

# raganame = "Kanakangi"
# stm = db.prepare ("SELECT * FROM Ragatables WHERE name = ? " , raganame)
#   rs = stm.execute
#
#   while (row = rs.next) do
#     puts row.join "\s"
# end









name = "Kanakangi"

    stm = db.prepare "SELECT * FROM Ragatables WHERE Name = ?"
    stm.bind_param 1, name
    rs = stm.execute
    row = rs.next
    puts row.join "\s"
