execute if entity @s[advancements={3mg:3mg/root=true},nbt={Inventory:[{tag:{3mgisGas:1b}}]}] unless entity @s[advancements={3mg:3mg/gas=true}] run advancement grant @s only 3mg:3mg/gas impossible
execute if entity @s[advancements={3mg:3mg/root=true},nbt={Inventory:[{tag:{3mgisCore:1b}}]}] unless entity @s[advancements={3mg:3mg/core=true}] run advancement grant @s only 3mg:3mg/core impossible
execute if entity @s[advancements={3mg:3mg/root=true},nbt={Inventory:[{tag:{3mgis3mg:1b}}]}] unless entity @s[advancements={3mg:3mg/3mg=true}] run advancement grant @s only 3mg:3mg/3mg impossible
execute if entity @s[advancements={3mg:3mg/gas=true},nbt={Inventory:[{tag:{3mgisCylinder:1b,GAS:1}}]}] unless entity @s[advancements={3mg:3mg/gas_compressor=true}] run advancement grant @s only 3mg:3mg/gas_compressor impossible
execute if entity @s[advancements={3mg:3mg/core=true},nbt={Inventory:[{tag:{3mgisCore:1b,Length:8}}]}] unless entity @s[advancements={3mg:3mg/core_full=true}] run advancement grant @s only 3mg:3mg/core_full impossible