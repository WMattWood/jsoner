### jsoner.rb

Convert complex lines of code into compatible .json format for
VS Code snippts configuration files.

- put the text you want to convert into the "text_to_convert.txt"
- run jsoner.rb with the `ruby jsoner.rb` command
- the converted text is now inside "converted_text.txt"

for some reason the json config files for Snippets don't like
when you have stuff between curly brackets and will raise linter
problems, you can ignore them.
