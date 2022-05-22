# Set up the health scoreboards and add 0 to everyone also set everyones max health to at least 100
scoreboard objectives add maxHealth dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard players add @a maxHealth 0
scoreboard players add @a health 0
scoreboard players add @a[scores={maxHealth=0}] maxHealth 100

# Set up the mana scoreboards and add 0 to everyone also set everyones max mana to at least 100
scoreboard objectives add maxMana dummy "Max Mana"
scoreboard objectives add mana dummy "Mana"
scoreboard players add @a maxMana 0
scoreboard players add @a mana 0
scoreboard players add @a[scores={maxMana=0}] maxMana100

# Display the Actionbar with Health and Mana display
titleraw @a[tag=!titlebar_disabled] actionbar {"rawtext":[{"text":"§c"},{"score":{"name":"*","objective":"health"}},{"text":"/"},{"score":{"name":"*","objective":"maxHealth"}},{"text":"❤	§"},{"score":{"name":"*","objective":"mana"}},{"text":"/"},{"score":{"name":"*","objective":"maxMana"}},{"text:"✎ Mana"}]}
