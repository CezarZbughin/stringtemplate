#
# Parsing is designed as a sequance of independent steps so that it can be stopped mid parsing and resumed at any time
# This methods mutates self to complete exactly one step. each step adds to the syntax tree and comsumes tokens
#