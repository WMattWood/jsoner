# jsoner.rb

Ever want to create VS Code snippets quickly and without tediously formatting the comment to the correct JSON structure?  This was a very simple Ruby tool I built to solve that very problem.  Jsoner will perform the required text manipulation in order to produce a VS Code compatible snippet in JSON format.  Just copy your raw code into the "text_to_convert.txt" file, run jsoner.rb with the `ruby jsoner.rb` command, and the converted text will be written to "converted_text.txt".  

Convert complex lines of code into compatible .json format for
VS Code snippts configuration files.

- put the text you want to convert into the "text_to_convert.txt"
- run jsoner.rb with the `ruby jsoner.rb` command
- the converted text is now inside "converted_text.txt"

for some reason the json config files for Snippets don't like
when you have stuff between curly brackets and will raise linter
problems, you can ignore them.
