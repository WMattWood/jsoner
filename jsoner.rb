#read and map file to an array of lines
lines = File.foreach('text to convert.txt').map { |line| line.chomp }
output = lines.map { |line| "      \"" + line + "\"," }
output.last.delete_suffix!(",")

#prefix lines
output.unshift("    \"body\": [")
output.unshift("    \"prefix\": \"<-- your shortcut here -->\",")
output.unshift("  \"<-- the name of your snippet here -->\": {")

#suffix lines
output.push("    ],")
output.push("		\"description\": \"<-- description of what it does -->\"")
output.push("  }")

#write file
File.write("converted text.txt", output.join("\n"))