## Challenge

In a role-playing world, characters use different types of magic in battles to defeat their enemies. Each spell has a specific function: attack, heal or defense.

Develop a program that allows the user to choose the type of magic they want to use and how many times they want to use it. Then, the program will have to perform the chosen spell the amount of times specified by the user.

## Input

The program should ask the user to choose a type of spell from the "attack", "heal" or "defense" options, using the io.read() function. Next, the program should ask for the number of times the chosen spell will be used, also using io.read().

## Output

After receiving the type of spell and the number of times you want to use it, the program should display on the screen the message corresponding to each use of the spell. Outgoing messages should follow the following format:

- if the chosen spell type is "attack"
  - `"Used attack magic!"`
- if the chosen spell type is "healing"
  - `"Used healing magic!"`
- if the chosen spell type is "defense"
  - `"Used defense magic!"`
- if the type of spell you choose is different from "attack", "heal" or "defense"
  - `"Invalid kind of magic!"`

The program should display a message for each use of the spell, repeating that message the number of times it was chosen by the user at the beginning of the program.

## Examples

The table below presents examples with some input data and their respective expected outputs. Be sure to test your program with these examples and other possible cases.

| Input      | Output                   |
| ---------- | ------------------------ |
| Defense, 2 | Used defense magic! `x2` |
| Heal, 3    | Used healing magic! `x3` |
| Attack, 1  | Used attack magic! `x1`  |

## Test

![Preview Test Challenge](https://media.discordapp.net/attachments/1153843582134923384/1171124044452601856/image.png?ex=655b8942&is=65491442&hm=5cf6ede921441ff12890aa95ed813e4ddc36619920243e06c6f30c60aa7a370d&=&width=810&height=604)
