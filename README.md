# Jedi Code Formatter CLI

I took [Jedi Code Formatter](http://jedicodeformat.sourceforge.net/) (JCF) from [Lazarus IDE repository](https://github.com/graemeg/lazarus/tree/upstream/components/jcf2) and made it as CLI (command line interface) version by removing all the GUI (graphical user interface) parts from the original GUI version. The CLI version can be used as Pascal code formatter in [Visual Studio Code](https://code.visualstudio.com/), or as backend engine of an online [Pascal code beautifier](https://pak.lebah.web.id/jcf).

## How To Build

1. You must have [Lazarus IDE](https://lazarus-ide.org) already installed on your system.
2. Start your Lazarus IDE and open `jcf.lpi` project within `CommandLine/Lazarus` folder.
3. Build it via Lazarus' **Run** → **Build** menu.
4. Wait while Lazarus is building the JCF project.
5. Take the executable `JCF` file from `Output/Lazarus` folder along with the `jcf.xml` configuration file.
6. Just to make sure, test it from Terminal using `./JCF -?` command. It should show the usage manual.

> Note: Just for your convenience, I suggest you to rename the executable file name into `jcf` (lowercased).

Alternatively, you may also compile the JCF project using Visual Studio Code using just [Free Pascal](https://freepascal.org) compiler (no Lazarus IDE is required). However, since FPC doesn't read `.lpi` project file, you must compile the `JCF.lpr` main program instead. Make sure you supply all the required compiler parameters correctly, especially the `-Fi`, `-Fu` and `-FE` options.

> Note: I've included the executable file for Linux, Mac, and Windows in [`Output/Lazarus`](https://github.com/git-bee/jcf-cli/tree/master/Output/Lazarus) folder so you don't need to build it yourself. 😊

## How To Use JCF in VS Code

1. Copy the `jcf` **and** `jcf.xml` config files into your Pascal workspace folder.
2. Create a new VS Code task or open the `tasks.json` if you already have one.
3. Copy the task example below and paste it into your `tasks.json` file.  

  ```json
  {
    "label"  : "fpc: Beautify Code",
    "type"   : "shell",
    "command": "./jcf",
    "args": [
      "${file}",
      "-clarify",
      "-inplace",
    ],
    "presentation": {
      "reveal": "never"
    },
    "problemMatcher": []
  },
```
4. It's a task to beautify Pascal code.
5. If you need a task to obfuscate code, simply make another task using the code above, but then change `-clarify` arg into `-obfuscate`.
6. Save your `tasks.json`. Now you should have new JCF's tasks in your tasks list.

## Demo

Here's JCF CLI in action within VS Code (with [OmniPascal](http://www.omnipascal.com/)):

![](jcf_vscode.gif)

> Note: If you're also interested in my other tasks shown in the demo, see my gist about it [here](https://gist.github.com/pakLebah/dab98067e9a388a3a8d2f5c0b44a7d3f).

Hope it's gonna be useful to other Pascal fellows out there. Have fun! 😊
