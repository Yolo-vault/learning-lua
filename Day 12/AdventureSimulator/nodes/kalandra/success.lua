-- Constants
local ID <const> = "kalandra.success"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node

node.title = "Success!"
node.gameWon = true
node.description = [[%{green}
You open the door and find a small altar in the middle of the room.As you approach, you see that there is a magical scroll in it, containing instructions to launch a spell that could chase Kraken.

You take the parchment to the beach and the big Kraken comes from the depths, over 30 meters high.Scary!

With the help of the parchment, magic is successfully performed and the terrifying creature returns to your kingdom, bringing peace and tranquility to the region again.In thanks, the local leader offers you a generous reward.

His adventure in Kalandra was full of challenges, but you survived and managed to help the local community.With a sense of fulfillment and satisfaction, you move on to your next adventure, knowing that your skills and courage will be needed again in the future.]]
node.header = [[
%{      }      %{blue}        %{   }      %{      }  %{    }          %{     }  %{magenta} .''.   %{     }
%{      }      %{blue} .''.   %{red}   .  %{      }  %{cyan}    *''*  %{     }  %{magenta}:_\/_:  %{green}   .
%{      }      %{blue}:_\/_:  %{red} _\(/_%{      }  %{cyan}.:.*_\/_* %{     }  %{magenta}: /\ :  %{green}.'.:.'.
%{yellow}  .''.%{blue}: /\ :  %{red} ./)\ %{      }  %{cyan}':'* /\ * %{white}: %{magenta} '..'.  %{green}-=:o:=-
%{yellow} :_\/_:'%{blue}.:::. %{red}   '%{yellow} *''* %{cyan}   * %{white}'.\'/.'%{red    } _\(/_%{green}'.':'.'
%{yellow} : /\ : %{blue}::::: %{   }   %{yellow} *_\/_*%{    }     %{white}-= o =-%{red    }  /)\ %{green}   '  *
%{yellow}  '..'  %{blue}':::' %{   }   %{yellow} * /\ *%{    }     %{white}.'/.\'.%{red    }   '  %{     }
%{      }      *   %{    }    %{   }   %{yellow}  *..* %{    }     %{white}   :   %{       }      %{     }
%{white }jgs     * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }
%{      }        * %{    }    %{   }   %{      }       %{    }     %{     }       %{       }      %{     }
]]

return node