## Challenge

Your role-playing game is taking shape! Now, it's time to implement the combat mechanics. To do this, you need to create a program that simulates a combat between a character and a monster.

The program should ask the user to enter a number between 1 and 6, which will represent the value of the character's dice roll. Next, the program should ask for another number between 1 and 6, which will represent the value of the monster's dice roll. The program should compare the moves and display the result of the fight on the screen, informing you if the character won, drew or lost.

## Input

The program should ask the user to enter two values: a number between 1 and 6 to represent the character's dice roll, and a number between 1 and 6 to represent the monster's dice roll.

## Output

After receiving the value of the character's dice roll and generating the value of the monster's dice roll, the program should compare them and display one of the following sentences on the screen:

- if the character's roll is higher than the monster's roll
  - `"You've won the battle!"`
- if the character's roll is lower than the monster's roll
  - `"You've lost the battle!"`
- if the character's roll is the same as the monster's roll
  - `"It was a draw!"`

## Examples

The table below presents examples with some input data and their respective expected outputs. Be sure to test your program with these examples and other possible cases.

| Input | Output                  |
| ----- | ----------------------- |
| 6, 6  | It was a draw!          |
| 4, 3  | You've won the battle!  |
| 1, 5  | You've lost the battle! |

## Test

![Preview Test Challenge](https://media.discordapp.net/attachments/1153843582134923384/1171121967793983519/image.png?ex=655b8753&is=65491253&hm=2783998a74907ea087cef6f1780f4d00f49696777dbb7e52d7a1e2d5691524f6&=&width=810&height=611)
