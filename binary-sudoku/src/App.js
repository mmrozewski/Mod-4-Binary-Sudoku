import React, {Component} from 'react'
import './App.css'
import MainContainer from './components/MainContainer';

export default class App extends Component {
  constructor(){
    super()
    this.state = {
      squares: 6,
    }
  }

  squareNumToArray = () => {
    const numSquareArr = [];
    for(let i = 0; i < this.state.squares; i++) {
      numSquareArr.push("e")
    }
    return numSquareArr;
  }

  freshBoard = () => {
    let squareCoorMod = {};

    this.squareNumToArray().map((square, i) => {
      return this.squareNumToArray().map((square, n) => {
        let coorsArr = [`${i}, ${n}`];
        squareCoorMod[coorsArr] = 0;
        return squareCoorMod;
      })
    })
    return squareCoorMod;
  }


  render(){
    return(
      <div className='App'>
        <h1>Binary Sudoku</h1>
        <MainContainer squares={this.state.squares} freshBoard={this.freshBoard}/>
      </div>
    )
  }
}