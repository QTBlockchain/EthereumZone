pragma solidity ^0.4.4;
contract IScoreStore{
    function GetScore(string name) returns (int);
}

contract MyGame{
    function ShowScore(string name) returns (int)
    {
        IScoreStore scoreStore = IScoreStore(0x5e24501b0f69a3cc6aa93b54564d1ca3a01496af);
        return scoreStore.GetScore(name);
    }
}