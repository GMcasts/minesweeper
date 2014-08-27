with(o_board)
  {
    switch global.wins 
      {
        case 0:
        case 1:
          return 4;
        case 2:
        case 3:
          return 5;
        case 4:
        case 5:
          return 6;
        case 6:
        case 7:
          return 7;
        case 8:
        case 9:
        case 10:
        default: return 8;
      }
  }
