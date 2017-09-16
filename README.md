Battle!
==================
```
|\                     /)
/\_\\__               (_//
|   `>\-`     _._       //`)
\ /` \\  _.-`:::`-._  //
`    \|`    :::    `|/
      |     :::     |
      |.....:::.....|
      |:::::::::::::|
      |     :::     |
      \     :::     /
       \    :::    /
        `-. ::: .-'
         //`:::`\\
        //   '   \\
       |/         \\
 ```

Credits
-------

Special thanks to Keith for sharing his knowledge in HTML/CSS and beautiful design.

Introductions
-------

A gladiator-style game played on the browser

To setup the game:
```
1. Clone the repo
2. Run bundle
3. Under the project folder (/battle), enter "rackup -p 4567" in command line to setup the server
4. Enter "localhost:4567" in your browser(Chrome) to launch the homepage
```
How to play
-------

1. Enter player names to start Battle
2. Each player can attack in turn
3. Reduce your opponent's HP to 0 to win
4. There are 4 types of attacks to choose from:
```
* Attack: deals 5-15dmg to the opponent.
* Stun: deals 3-10dmg, with a chance to stun the opponent. Stunned player will lose 1 turn.
* Poison: deals 1-3dmg and 1-3dmg every round thereafter.
* Heal: Heal self for 5-10HP.
```

Known Issues
------------------
* Some tests need to be added or modified
* Only tested on Chrome @ 1920x1080 screen resolution
* Cannot use a computerised opponent yet
* Refresh on 'Attacks' page (Attack, Stun, Poison, Heal, Poison_damage) cause forms to be re-sent, dealing multiple damage/healing.
