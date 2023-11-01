export const getFloor = (instruction: string, currentFloor = 0): number => {
  const parens = instruction.split('');

  let floor = currentFloor;

  parens.forEach(paren => {
    if (paren === '(') floor++;
    if (paren === ')') floor--;
  })

  return floor;
}

export const getPositionToFirstEnterBasement = (instruction: string): number => {
  let position = 0;

  for (let i = 1; i <= instruction.length; i++) {
    const floor = getFloor(instruction.substring(0, i));

    if (floor === -1) {
      position = i;
      break;
    }
  }

  return position;
}

export const getPositionToFirstEnterBasementV2 = (instruction: string): number => {
  let position = 0;
  let currentFloor = 0;

  for (let i = 0; i <= instruction.length; i++) {
    const floor = getFloor(instruction[i], currentFloor)
    
    if (floor === -1) {
      position = i + 1;
      break;
    }

    currentFloor = floor
  }
  
  return position;
}

export const getPositionToFirstEnterBasementV3 = (instruction: string): number => {

  const parens = instruction.split('')

  let currentFloor = 0;
  let position = 0;
  
  parens.forEach((paren, index) => {
    const floor = getFloor(paren, currentFloor)
    
    if (currentFloor !== -1) {
      currentFloor = floor
      position = index + 1
    }
  })

  return position;
}