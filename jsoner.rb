# Check if Ruby version is up to date
error_message = <<HEREDOC
You are using a Ruby version below 2.5.0
Please ensure you are using a more up to date Ruby version in order to use jsoner.rb
You can check your current Ruby version using $Ruby -v
HEREDOC

if RUBY_VERSION < "2.5.0"
    raise StandardError.new("error_message") 
end

#read and map file to an array of lines
lines = File.foreach('text_to_convert.txt').map { |line| line.chomp }
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
File.write("converted_text.txt", output.join("\n"))