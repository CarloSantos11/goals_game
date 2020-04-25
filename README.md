# Level Up
## Master Mind Group

This is a game designed to help gamify the idea of completing goals. The game is meant to be played by two or more people.

How the game works. 

Teamates will work to win "envelopes"(The term evelopes may change in the future. Ex: jackpot, prize, target). 

You win envelopes by buying out the envelope. Each envelope has a price. Ex:

1) Floor level Concert Seats: $1,000
2) Trip to Venice: $4,000
3) New Car: $36,000

You put money towards buying out the envelope by winning the pot or the weekly winnings. (The organizers of the game will decide the value of the pot. Ex: every player antes up $200 a week. Or maybe a percentage of allowance).

Each week, teammates ante up their goals. Each goal is worth a certain amount of points. Whoever has the most points at the end of the week gets the pot or the weekly winnings.

## Where am I at currently:
- ToDo:
  - need to finish system test for reversing  the complete goal
    - use system test for completing goals as example
  - add user sessions
  - add envelopes model
  - work on styling
    - currently using draw.io for views https://drive.google.com/file/d/1fvSpTo7TmMSx-tHh3qfQBkRlmijrFX_u/view?usp=sharing
    - still flushing out views
- Done:
  - complete_goal method
  - complete_goal system test
  - reverse_completion method

### Classes

- Users
  - name
  - email
  - points

- Goal
  - title 
  - description
  - points

- Envelope
  - paid_off
  - total_value
