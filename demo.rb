file = File.read('./JSON/store.json')
f = JSON.parse(file)
puts f

#   File.write("./JSON/store.json" , "#{Time.now} - User logged in\n",mode:"a" )
#   file.close
