# Vulker
****
**This repository contains the code for SureDroid's game, Vulker.**

## Premise
Vulker is a experimental platformer shooting game. The goal of the game is to have fun multiplayer shooting battle with your enemies, dodging bullets and fighting to the death. The goal of the project personally is find a love for game-development again and to be able and to learn the intricacies of game development.

## Terms
There are a couple of terms I (Chosen) am setting for myself to prevent the project from overextending its stay.
1. The development of the game must be enjoyable. If I don't find myself enjoying the development process, I will either try to change the development process to be more enjoyable, or just drop the project.
2. Other people should not be a requirement to complete this project. If I decide to take some people along for this project, or they request to join me, they must be able to consistently deliver content in a timely manner, otherwise, the project will inevitably slow down and they will be dropped.
3. This game isn't meant to encompass amazing art, music, or story. Just decent gameplay, but all these things are a plus.
4. The game does not have to be completed or published for it as a success. All that has to be done is that a lot has been learned from the project and the development of the project was an enjoyable process.

Note that these terms may change as the project develops. It may one day eventually become a full fledged game released to the public.

## Coding Guidelines
#### Before working on a section of the game,
make sure that you design and draw out the mechanics first. Head over to a [free markdown writing tool](https://stackedit.io/app). You want to list the different classes in the mechanic, the methods and what each method does, write some pseudo code and/or baseplate code on the important parts of the mechanics. TLDR Explain in detail on how its going to work, and how it will integrate with the other systems. After that, create a new branch and name it relevant to what you are adding, along with a folder relevant to the concept. Then, you want to upload the MD file into the folder and call it ``Desgin.md`` along with any baseplate code and folder structure (with empty ``.gitkeep`` files), then pull request with the first letters as WIP: then the title of the request.  After you complete that, wait for approval to start working on that part of the code. We may discuss how the current system can be improved, optimized, and cleaned. Once you get approval, you are free to start working on the code. While working on the code, write documentation on each method for what it does, list the uses for each variable (if not self-explanatory), and explain the code as if someone who never looked at it before is going to look at it.

#### Branch Structure
We have a different branch per each WIP concept. This makes it easier to separate experimental code from our main code, and allows multiple people to work on a single concept.  

#### Whenever you find bugs,
create a issue to that bug in Gitlab, and reference the line of code to the bug. Say what is expected, and why it doesn't work as expected. Provide as many details as possible to make the bug easier to resolve.

#### Whenever creating test scripts/files,
place any scripts/files in a seperate ``tests`` folder. If there are multiple test scripts/files, nest the scripts/files in a new folder named after the test script purpose. If it is only one test, you can name the script after the test script's purpose. Check StructureExample for an example.

For more copyright information, head over to [Copyright.md](COPYRIGHT.md).
