# jsoner.rb

Ever want to create VS Code snippets quickly and without tediously formatting the comment to the correct JSON structure?  This was a very simple Ruby tool I built to solve that very problem.  Jsoner will perform the required text manipulation in order to produce a VS Code compatible snippet in JSON format.  Just copy your raw code into the `text_to_convert.txt` file, use the command line to navigate to the jsoner folder (ie. `$ cd jsoner`) and run with the `$ ruby jsoner.rb` command. The converted text will then be written to `converted_text.txt`.  

Compatible with Ruby 2.5.0 and higher.

# Quick Overview
Jsoner.rb - convert complex lines of code into compatible .json format for
VS Code snippts configuration files.

- put the text you want to convert into the "text_to_convert.txt"
- run jsoner.rb with the `ruby jsoner.rb` command
- the converted text is now inside "converted_text.txt"

The JSON config files tend to not like when you have code content
which is written between curly brackets and may raise linter
problems in VSCode, you can ignore them - the snippet will still
work without an issue.

# Example

input text:
```js
import { useState } from 'react';

const NewComponent = () => {
  const [count, setCount] = useState(0);

  return (
    <div>
      <p>Counter value: {count}</p>
      <button onClick={ () => setCount(count + 1) }>
        Click me!
      </button>
    </div>
  );
}

export default NewComponent
```

output snippet:
```json
  "<-- the name of your snippet here -->": {
    "prefix": "<-- your shortcut here -->",
    "body": [
      "import { useState } from 'react';",
      "",
      "const NewComponent = () => {",
      "  const [count, setCount] = useState(0);",
      "",
      "  return (",
      "    <div>",
      "      <p>Counter value: {count}</p>",
      "      <button onClick={ () => setCount(count + 1) }>",
      "        Click me!",
      "      </button>",
      "    </div>",
      "  );",
      "}",
      "",
      "export default NewComponent"
    ],
		"description": "<-- description of what it does -->"
  }
```

In the output snippet - there are 3 fields which you should fill in manually.

1. <-- the name of your snippet here -->
2. <-- your shortcut here -->
3. <-- description of what it does -->

Field (1) will be the name of the snippet as it will appear when the snippet is previewed.
Field (2) will be the character combination you will need to type inside your code in order to summon the snippet.
Field (3) will be the description of the snippet that appears when the snippet is previewed.

# How Snippets Work in VSCode
VSCode offers the option to save certain chunks of code which can be automatically populated into your working file with a shortcut. There are a number of these which are active inside VSCode by default, but the user can also add their own custom snippets.  These are stored in JSON files which are specific to each coding language (ie. Javascript snippets are stored in a `javascript.json` file).  In order to add snippets to a given language, you will need to create a file for that language in the Configure User Snippets section of VSCode.  

MacOS:  Code > Preferences > Configure User Snippets
Windows: File > Preferences > Configure User Snippets

You can then copy and paste your new snippet into the area indicated inside the top level {} brackets of the JSON file. Additional snippets should be separated by commas within the top level brackets.
