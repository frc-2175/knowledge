This is a simple guide to editing this wiki using a tool called Obsidian! It's an easy to use, flexible, Markdown editing tool with awesome functions like the graph view (try clicking it on the side bar!).
## How does it work?

When you use Obsidian, you're *actually* just interacting with a bunch of text files. These files are in a format called [Markdown](https://en.wikipedia.org/wiki/Markdown) , which allows simple text stylization in a way you may be already familiar with. If you've ever used asterisks to stylize text on a platform like Discord (\*bold text!\*) or backticks to denote code (\`truth = java < python\`), you've used a simplified version of Markdown! There are many fancy, complicated ways you can style text with Markdown, and syntax varies based on the software you're using. You can find a complete guide to Obsidian Markdown syntax [here](https://help.obsidian.md/Editing+and+formatting/Basic+formatting+syntax).

Making edits to files on your local computer is great, if you're taking personal notes (about, say, your upcoming Cosine fanart), but it's not great for a collaborative wiki like this. Syncing text between collaborators is actually a common problem throughout computing, but especially in programming. Programmers frequently need to work on the same code at the same time, making individual edits, while still needing their work to be synced with other people on their team. To solve this issue, a tool called [[Git]] was created by a man who spends all of his time in a windowless green basement. To describe it briefly, Git allows developers to manage multiple versions of the same code, edit them at the same time, then automatically reconcile the differences between the changes, eliminating overlaps, and syncing everything in one place (at least it tries to).

As it turns out, because Obsidian is really just a text editor and Git can sync any text files, we can use Git to keep everything in sync between editors of the wiki. By installing an extension for Obsidian, you can use Git and sync your changes without even leaving the app! Once you push your changes, some magic happens in the cloud to actually bring the website to life. Your commit triggers a GitHub Action: a small piece of code that automatically performs tasks developers need to do regularly. In this case, the GitHub Action runs a site generator called [Quartz](https://quartz.jzhao.xyz/). Quartz takes all of the Markdown files you edited using Obsidian, and translates them into a website layout. It apples certain themes, and uses user-defined rules to make a beautiful site like this. Because Quartz runs on GitHub's servers, you don't have to run any code on your computer when you make a change. All you have to do is press the "commit and sync" button in Obsidian, and your changes will be pushed to the website in a few minutes!

This also means that everyone can make edits to the configuration of Quartz, and therefore, how the wiki looks and runs, without installing any software. Once you have edit access to the team GitHub organization, simply visit the [repository for this wiki](https://github.com/frc-2175/knowledge), and edit the `quartz/quartz.config.ts` file. The syntax for doing so is outside the scope of this explanation, but you can learn more about configuring Quartz [here](https://quartz.jzhao.xyz/configuration)! Hack away!

Finally, everything is hosted using GitHub Pages, a free, dead-simple hosting platform built into GitHub. Once Quartz has finished building the site after a commit, the GitHub Action will copy the contents of the `quartz/public` folder to GitHub Pages, where it's automatically hosted and accessible at a public URL. Most of the configuration for this process can happen either in the settings for this repo (for example, for changing the URL this is hosted at), or by editing the definition for the GitHub Action: `.github/workflows/deploy.yml`.

## Setting up Obsidian

Getting setup with editing using Obsidian is relatively easy on any platform, and only takes a few steps:
1) [Download Obsidian](https://obsidian.md/download) (available on nearly every platform; free)
2) Create a new vault (make a new folder wherever you'd like) ![[Screenshot 2024-12-07 at 2.10.08 AM.png]]
3) Open Obsidian settings (`cmd + ,` / `ctrl + ,`)
4) Enable community plugins (Obsidian may need to reload)
5) Search for the Git plugin, then install and enable it ![[Screenshot 2024-12-07 at 2.15.15 AM.png]]
6) Open the options for the Git plugin ![[Screenshot 2024-12-07 at 2.16.45 AM.png]]
7) Enable "pull on startup" to ensure you're always up-to-date ![[Screenshot 2024-12-07 at 3.15.49 AM.png]]
8) Also set the "auto pull interval" to every five minutes, then close the options menu ![[Screenshot 2024-12-07 at 3.16.49 AM.png]]
9) Open the command palette (`cmd + p` / `ctrl + p`) and select `Git: Clone an existing remote repo` ![[Screenshot 2024-12-07 at 2.38.44 AM.png]]
10) Enter `https://github.com/frc-2175/knowledge.git` as the URL for the repo ![[Screenshot 2024-12-07 at 2.41.19 AM.png]]
11) Enter `wiki` for the directory to clone into
12) Select "no" if prompted: "Does your remote repo contain a `.obsidian` directory at the root?"
13) Press `return`/`enter` when prompted for the depth of clone
14) Expand `wiki/content`, choose any note and **make a minor edit** (change a single letter, add a sentence, any edit) ![[Screenshot 2024-12-07 at 2.53.44 AM.png]]
15) Click "commit-and-sync" at the upper right hand of your screen ![[Screenshot 2024-12-07 at 2.56.03 AM.png]]
16) When prompted for a username, enter `frc-2175` ![[Screenshot 2024-12-07 at 3.00.48 AM.png]]
17) When prompted for a password, enter the token found [here](https://frc2175.slack.com/archives/C0CMRVBQU/p1733562267068849) (you will need to sign in to Slack)![[Screenshot 2024-12-07 at 3.05.53 AM.png]]

**You are now able to make edits to the wiki! 🎉**

## Using Git in Obsidian

Using Git is pretty simple, just remember a few key things:
- **Commit your changes early and often**; if you don't commit the edits you've made, no one gets to see them, and other editors can't build off them
	- If you wait to commit until later, and someone else has made an edit in between you pulling the file, editing and committing, it can cause merge conflicts (an incredibly annoying way to lose lots of work and waste lots of time)
- **Always pull before starting work**!
	- There's nothing worse than wasting time by starting work on an old version. Obsidian should automatically pull on startup and once every five minutes, but double check it has before starting work!

Once you commit by opening the Git menu and pressing "commit-and-sync", your changes will be reflected on the web after about two minutes (may take longer as Quartz processes the new site)!

## **Happy editing!**

