#!/usr/bin/env bash

# Giving out the id of the focused desktop
bspc query -D -d

# Giving out the the id of desktop 4
#bspc query -D -d '^4'

#---------------------------------------------
# EXPLANATION:
#---------------------------------------------
# On a horizontal split
# 0x00400047 -> root node
# 0x00A03880 -> left node
# 0x00A0405C -> right node

# On a vertical split
# 0x00400047 -> root node
# 0x00A03880 -> upper node
# 0x00A0405C -> lower node

# This pattern continues, as the tree grows.
# When there are 3 open Windows, there are 5 nodes:
# 1 (+1)root node containing 1 big window (+1) and
# 2 small windows which are inside a node (+1) and are one node
# by themselfs (+2)
#
# Four Windows, two each side
# 0x00400061 -> root node
# 0x00400065 -> left parent
# 0x00A071B7 -> upper left window
# 0x00A0745A -> bottom left window
# 0x00400063 -> right parent
# 0x00A07415 -> upper right window
# 0x00A07436 -> bottom left window

