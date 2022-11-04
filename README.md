# Resume App

An interactive mobile version of your resume.

## Features
- Dark mode
- Responsive layout
- Interactive design

## Code base and how it works
This codebase is a flutter codebase. It has 3 folders:
- core
- data
- widgets

The core folder contains code that is shared through multiple app features. It includes styling files, cubits for state management and shared widgets.

The data folder contains model classes and string constants.

The widgets folder is subdivided into four folders; each representing a specific feature and containing custom widgets used only in that feature.

## Design description
The app is a single page application with multiple tabs. Each tabview contains a section of the resume. The UI is simple and minimalistic, with only one primary color (#1B3979) in the light theme and two shades of grey for the dark theme. It uses outlined material icons 

- Inspiration: https://dribbble.com/shots/15273424-Resume-CV-Mobile-Shots

## Libraries
- Bloc library: For state management
- Url launcher: To open social media links
- Flutter svg: To load SVG format files

## Future features
- A section for my projects

## Challenges
- My major challenge was the layouting; implementing the fixed and scrollable parts of the UI. I solved it with the help of flutter official docs, stack overflow and a sprinkle of trial and error.
- Writing this readme file because i didn't understand how to do half of what was requested. But with extensive research, I believe i have overcomed this challenge.

### Links
- Apk file: https://drive.google.com/file/d/1UlFwvpMeejpIwRZDkRok_XvWq4ms38it/view?usp=sharing
- Appetize link: https://appetize.io/app/dz7uaya7j534guuvtvwlwsuham?device=pixel4&osVersion=12.0&scale=75
- Github link: https://github.com/KanmaChizea/resume_app
