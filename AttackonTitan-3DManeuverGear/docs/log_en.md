# Log

[Back to Homepage](../README.md)

----

## TimeLine

| Date | Content |
| - | - |
| 2019/08/26 | Start to work with 1.14 |
| 2019/11/19 | Done with main content, backup to Github |
| 2020/06/17 | Fix to get update with 1.16 |
| 2020/06/23 | Change system regulation |
| 2020/06/25 | Fix bugs about items |
| 2020/06/27 | Write documents |
| 2020/06/28 | Release on Github |

## Known Bugs

1. Cannot clear offhand weapon when using container

    An old bug: [MC-87019](https://bugs.mojang.com/browse/MC-87019)。

## Resolved Bug

1. Calculation deviation of vetors in 1.16

    After one snapshot between 20w20b and 20w22a, the position of `execute at @s` doesnot correspond with `Pos`. Solution: Use `execute at @s` instead of `Pos`.

2. Modify `Motion` with no gravity

    An old bug: [MC-140228](https://bugs.mojang.com/browse/MC-140228). Solution: Only use `NoGravity` when pulling.

3. Unbreakability of 3MG

    In original design, 3MG is unbreakable. It kind of breaks game's balance. Solution: Add an independent durability system that taking wear and tear only when equipped。

4. AttributModifiers being overwritten

    It uses `AttributeModifiers` to control attack of 3MG. Disabling attack is adding an attribute which reduces attack power by a wide margin. If the previous 3MG has no attribute, after disabling and enabling, its tag will be `AttributeModifiers:[]`, which means it has no way to cause damage. Solution: Use a custom NBT `AttributeModifiersCopy` to store previous `AttributeModifiers` and detect custom attributes in 3MG dynamically. Now, you can use swords with custom attributes to make 3MG.