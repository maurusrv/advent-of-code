export const getFloor = (instruction: string, currentFloor = 0): number => {
  let floor = currentFloor;
  
  const parens = instruction.split('');
  parens.forEach(paren => {
    if (paren === '(') floor++;
    if (paren === ')') floor--;
  })

  return floor;
}

// Slowest since using substring, (meaning always restarting from index 0 every loop on getFloor)
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

// Fastest in benchmark result, but uses additional variable currentFloor
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

// Slower than V2, just use a forEach instead of a good 'ol for loop
export const getPositionToFirstEnterBasementV3 = (instruction: string): number => {
  let currentFloor = 0;
  let position = 0;

  const parens = instruction.split('')
  
  parens.forEach((paren, index) => {
    const floor = getFloor(paren, currentFloor)
    
    if (currentFloor !== -1) {
      currentFloor = floor
      position = index + 1
    }
  })

  return position;
}