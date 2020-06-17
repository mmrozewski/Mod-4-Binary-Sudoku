import React, { Component } from 'react'
import GameUnit from "./GameUnit"
import { Container, Row, Col } from "react-bootstrap";


export default class GameContainer extends Component {


    state = {
        unitState: this.props.sampleBoard,
        containerGlow: null,
        initialBoardState: this.props.sampleBoard
    }

    

    changeUnitBalance = (xCor, yCor, modifier) => {
        this.setState({
            unitState: {
                ...this.state.unitState, [`${xCor}, ${yCor}`]: modifier
            }
        }, () => {
            this.checkUnitBalance();
            this.checkForRowColBalance();
            this.checkNoTriples();
            this.checkEmptySpaces();
            this.checkForNoDuplicateRowsandCols();
            this.adjustPurpGlow();
        this.winGame();
        })
    }

    winGame = () => {
        if(this.checkUnitBalance() && this.checkNoTriples() &&
           this.checkEmptySpaces() && this.checkForNoDuplicateRowsandCols() &&
           this.checkForRowColBalance()) {
            return true;
        }
    }

    checkUnitBalance = () => {
        if(Object.keys(this.state.unitState).length % this.props.squares === 0 &&
           Object.values(this.state.unitState).reduce((sum, num) => sum + num) === 0) {
            console.log("Good unitBalance over board?: ", true);      
            return true;
        }
        else {
            console.log("unitBalance: ", false)
            return false;
        }
    }

    checkForRowColBalance = () => {
        const balanceRowColBools = [];
        const colSlices = [];
        for(let i = 0; i < this.props.squares**2; i += this.props.squares) {
            colSlices.push(Object.values(this.state.unitState).slice(i, i + this.props.squares));
        }
        colSlices.forEach((col, i) => {
          if(col.reduce((sum, num) => sum + num) === 0 && !col.includes(0)) {
            console.log(`Column at [${i}] balanced?: `, true);
            balanceRowColBools.push(true);
          }
          else if(!col.includes(0)) {
            console.log(`Column at [${i}] balanced?: `, false);
          }
        })
    
        const rowVals = [];
        const rowSlices = [];
        for(let i = 0; i < this.props.squares; i++) {
          colSlices.forEach(arr => rowVals.push(arr[i]));
        }
        for(let i = 0; i < this.props.squares**2; i += this.props.squares) {
          rowSlices.push(rowVals.slice(i, i + this.props.squares));
        }
        rowSlices.forEach((row, i) => {
          if(row.reduce((sum, num) => sum + num) === 0 && !row.includes(0)) {
            console.log(`Row at [${i}] balanced?: `, true);
            balanceRowColBools.push(true);
          }
          else if(!row.includes(0)) {
            console.log(`Row at [${i}] balanced?: `, false);
          }
        })
        if(balanceRowColBools.length === this.props.squares*2) {
          console.log("All rows and cols balanced?: ", true);
          return true;
        }
    
    }

    checkNoTriples = () => {
            for(let i = 0; i < Object.keys(this.state.unitState).length; i++) {
                let entries = Object.entries(this.state.unitState).slice(i, i + 3)
                if(entries.length === 3 &&
                   entries.every((val, index, arr) => val[0][0] === arr[0][0][0]) &&
                   entries.every((val, index, arr) => val[1] === arr[0][1] && arr[0][1] !== 0)) {
                       console.log("No vertical triples?: ", false)
                       return false;
                       
                }
                else if(entries.length === 3 &&
                       (this.reversedCoors(this.state.unitState).slice(i, i + 3).every((val, index, arr) => val[0][0] === arr[0][0][0])) && 
                       (this.reversedCoors(this.state.unitState).slice(i, i + 3).every((val, index, arr) => (val[1] === arr[0][1] && arr[0][1] !== 0)))) {
                        console.log("No horizontal triples?: ", false)
                        return false;                        
                }
                else {
                    console.log("No triples of any kind?: ", true)
                    return true;
                }
            }   
      }
    
    reversedCoors = (state) => {
        const newCoors = Object.entries(state).map(entry => {
            let xCor = entry[0][0];
            let yCor = entry[0][3];
            let reversedKeys = "";
            reversedKeys = [`${yCor}, ${xCor}`, entry[1]]
            return reversedKeys;
            })
        return newCoors.sort()
    }

    adjustPurpGlow = () => {
        const numColorSquares = Object.values(this.state.unitState).filter(square => square !== 0).length
        if(numColorSquares >= (this.props.squares**2)/4) {
             this.setState({
                 containerGlow: "0px 0px 40px rgb(126, 0, 126, 0.15)"
             })
             if(numColorSquares >= (this.props.squares**2)/3) {
                this.setState({
                    containerGlow: "0px 0px 40px rgb(126, 0, 126, 0.3)"
                })
                if(numColorSquares >= (this.props.squares**2)/2) {
                    this.setState({
                        containerGlow: "0px 0px 40px rgb(126, 0, 126, 0.45)"
                    })
                    if(numColorSquares >= ((this.props.squares**2) * 2) / 3) {
                        this.setState({
                            containerGlow: "0px 0px 40px rgb(126, 0, 126, 0.6)"
                        })
                        if(numColorSquares >= ((this.props.squares**2) * 3) / 4) {
                            this.setState({
                                containerGlow: "0px 0px 40px rgb(126, 0, 126, 0.8)"
                            })
                        
                            if(numColorSquares >= (this.props.squares**2)) {
                                this.setState({
                                 containerGlow: "0px 0px 60px rgb(136, 0, 136)"
                                })
                                if(this.winGame()) {
                                    this.props.disableGame();
                                    this.setState({
                                        containerGlow: "0px 0px 130px rgb(255, 0, 255)",
                                    }, () => {
                                        const timer = setTimeout(() => {
                                            alert("You Solved the Puzzle!") 
                                        }, 2000);
                                        return () => clearTimeout(timer)
                                        })
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    checkForNoDuplicateRowsandCols = () => {
        if(!Object.values(this.state.unitState).includes(0)) {
            let stringSlices = [];
            let slices = [];
            for(let i = 0; i < this.props.squares**2; i += this.props.squares) {
                let colVals = Object.values(this.state.unitState).slice(i, i + this.props.squares);
                slices.push(colVals)
                stringSlices.push(colVals.toString())
            }
            for(let i = 0; i < this.props.squares; i++) {
                for(let n = i + 1; n < this.props.squares - 1; n++) {
                    if(stringSlices[i] === stringSlices[n]) {
                    console.log("No duplicate columns?: ", false)
                    return false;
                    
                    }
                }
            }
            let rowVals = [];
            let stringRowSlices = [];
            for(let i = 0; i < this.props.squares; i++) {
                slices.forEach(arr => rowVals.push(arr[i]))
            }
            for(let i = 0; i < this.props.squares**2; i += this.props.squares) {
                stringRowSlices.push(rowVals.slice(i, i + this.props.squares).toString());
            }
            for(let i = 0; i < this.props.squares; i++) {
                for(let n = i + 1; n < this.props.squares - 1; n++) {
                    if(stringRowSlices[i] === stringRowSlices[n]) {
                    console.log("No duplicate rows?: ", false)
                    return false;
                    
                    }
                }
            }
        console.log("No duplicate rows OR columns?: ", true)
        return true;
        }
    }
    

    checkEmptySpaces = () => {
        if((Object.keys(this.state.unitState).length === this.props.squares**2) && (!Object.values(this.state.unitState).includes(0))) {
            console.log("No empty spaces left?: ", true)
            return true;
        }
        else {
            return false;
        }
    }

    squareNumToArray = () => {
        const gameSizeArr = [];
        for(let i = 0; i < this.props.squares; i++) {
            gameSizeArr.push("e")
        }
        return gameSizeArr;
    }

    setInitialColorAndMod = (modifier) => {
        if(modifier === 0) {
          this.setState({
            color: "rgb(46, 46, 46)",
            glow: "0px 3px 5px rgba(0, 0, 0, 0.875)"
          })
        }
        else if(modifier === 1) {
          this.setState({
            color: "rgb(179, 0, 0)",
            glow: "0px 5px 10px rgba(0, 0, 0, 0.475), 0px 0px 15px rgba(255, 0, 0, 0.600)"
          })
        }
        else if(modifier === -1) {
          this.setState({
            color: "rgb(26, 26, 255)",
            glow: "0px 5px 10px rgba(0, 0, 0, 0.475), 0px 0px 15px rgba(0, 0, 255, 0.600)" 
          })
        }
    }

    

    generateTable = () => {
        const rows = this.squareNumToArray();
        return (
            <Container id="myContainer" className="show-grid">
                {rows.map((cols, i) => (
                    <Row id="myRow">
                        {rows.map((col, n) => (
                            <Col id="myCol" style={{boxShadow: this.state.containerGlow}}>
                                <GameUnit xCor={n} yCor={i} keyValPair={`${n}, ${i}`} initialBoardState={this.state.initialBoardState} changeUnitBalance={this.changeUnitBalance}/>
                            </Col>
                        ))}
                    </Row>
                ))}
            </Container>
        )   
    }
    render() {
        return (
            <div>
                {this.generateTable()}
            </div>
        )
    }
}
     



  
