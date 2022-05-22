# Set up the health scoreboards and add 0 to everyone also set everyones max health to at least 100
scoreboard objectives add maxHealth dummy "Max Health"
scoreboard objectives add health dummy "Health"
scoreboard players add @a maxHealth 0
scoreboard players add @a health 0
scoreboard players add @a[scores={maxHealth=0}] maxHealth 100

# Set up the defense scoreboard and add 0 to everyone
scoreboard objectives add defense dummy "Defense"
scoreboard players add @a defense 0

# Set up the mana scoreboards and add 0 to everyone also set everyones max mana to at least 100
scoreboard objectives add maxMana dummy "Max Mana"
scoreboard objectives add mana dummy "Mana"
scoreboard players add @a maxMana 0
scoreboard players add @a mana 0
scoreboard players add @a[scores={maxMana=0}] maxMana 100

# Display the Actionbar with Health and Mana display
titleraw @a[tag=!staff.debug.titlebar_disabled] actionbar {"rawtext":[{"text":"§c"},{"score":{"name":"*","objective":"health"}},{"text":"/"},{"score":{"name":"*","objective":"maxHealth"}},{"text":"❤     §a"},{"score":{"name":"@a","objective":"defense"}},{"text":"❈ Defense     §b"},{"score":{"name":"*","objective":"mana"}},{"text":"/"},{"score":{"name":"*","objective":"maxMana"}},{"text":"✎ Mana"}]}
