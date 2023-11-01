def get_floor (instruction, current_floor = 0):
  floor = current_floor
  
  for paren in instruction:
    if paren == '(': 
      floor += 1
    elif paren == ')':
      floor -= 1

  return floor


def get_position_to_first_enter_basement (instruction):
  position = 0
  current_floor = 0

  length = len(instruction)

  for i in range(length):
    floor = get_floor(instruction[i], current_floor)

    if floor == -1:
      position = i + 1
      break

    current_floor = floor

  return position

def get_position_to_first_enter_basement_v2 (instruction):
  position = 0

  length = len(instruction)

  for i in range(length):
    floor = get_floor(instruction[0:i+1])

    if floor == -1:
      position = i + 1
      break

  return position