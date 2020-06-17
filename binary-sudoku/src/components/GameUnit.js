import React, { Component } from "react"
import Square from "./Square"
import InitialSquare from "./InitialSquare"

export default class GameUnit extends Component {
    state = {
      color: "rgb(46, 46, 46)",
      glow: "0px 3px 5px rgba(0, 0, 0, 0.875)"
    }

    boardProps = () => {
      console.log(this.props.initialBoardState);
    }
    
    

    changeColor = () => {
        if (this.state.color === "rgb(46, 46, 46)") {
          this.setState({
            color: "rgb(179, 0, 0)",
            glow: "0px 5px 10px rgba(0, 0, 0, 0.475), 0px 0px 15px rgba(255, 0, 0, 0.600)",
          })
          this.props.changeUnitBalance(this.props.xCor, this.props.yCor, 1);


        }
        else if (this.state.color === "rgb(179, 0, 0)") {
          this.setState({
            color: "rgb(26, 26, 255)",
            glow: "0px 5px 10px rgba(0, 0, 0, 0.475), 0px 0px 15px rgba(0, 0, 255, 0.600)",
          })
          this.props.changeUnitBalance(this.props.xCor, this.props.yCor, -1);


        }
        else if (this.state.color === "rgb(26, 26, 255)") {
          this.setState({
            color: "rgb(46, 46, 46)",
            glow: "0px 3px 5px rgba(0, 0, 0, 0.875)",
          })
          this.props.changeUnitBalance(this.props.xCor, this.props.yCor, 0);


        }
      }

      render() {
        const modifier = this.props.initialBoardState[this.props.keyValPair]
        if(modifier !== 0) {
          return (
            <div className="initial-square">
              <InitialSquare modifier={modifier} keyValPair={this.props.keyValPair} initialBoardState={this.props.initialBoardState}/>
            </div>
          )
        }
        else {    
          return (
              <div className="game-unit">
                  <Square color={this.state.color} keyValPair={this.props.keyValPair} initialBoardState={this.props.initialBoardState} modifier={this.props.modifier} glow={this.state.glow} changeColor={this.changeColor} xCor={this.props.xCor} yCor={this.props.yCor}/>
              </div>
          )
        }
      }
}

