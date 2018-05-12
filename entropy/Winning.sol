contract WinBattle {

  function WinBattle() public {
        //Get a reference to the game
        EtheremonLite game = EtheremonLite(0xf3259eec5b4a46748a1f608ec3d74b89058bb3ad);
        //Create a monster in constructor so only creates once
        game.initMonster("jan266");
    }

    function checkWin() public {
      EtheremonLite game = EtheremonLite(0xf3259eec5b4a46748a1f608ec3d74b89058bb3ad);

      uint battleRatio = 3;   // 3  ogre weight / 1 my weight
      uint dice = uint(blockhash(block.number - 1));
      dice = dice / 85; // Divide the dice by 85 to add obfuscation
      if (dice % battleRatio == 0) {
          game.battle();
      }
    }

}
