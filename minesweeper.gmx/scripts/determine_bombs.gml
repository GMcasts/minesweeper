with(o_board)
  {
  switch global.wins
    {
    case 0:
      return 5;
    case 1:
      return 6;
    case 2:
      return 7;
    case 3:
      return 8;
    case 4:
      return 9
    default:
      return 9;
    }
  }
