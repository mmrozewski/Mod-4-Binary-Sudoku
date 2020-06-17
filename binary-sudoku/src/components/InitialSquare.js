import React from 'react'

export default function InitialSquare(props) {

    const { modifier } = props;

    // const initialSquareStyle = {
    //   backgroundColor: color,
    //   boxShadow: glow,
    //   transition: "300ms"
    // }

    const setInitialStyle = () => {
  
        if(modifier === 1) {
          let squareStyle = {
            backgroundColor: "rgb(179, 0, 0)",
            boxShadow: "0px 5px 10px rgba(0, 0, 0, 0.475), 0px 0px 15px rgba(255, 0, 0, 0.600)",
          }
            return squareStyle
        }
        else if(modifier === -1) {
          let squareStyle = {
            backgroundColor: "rgb(26, 26, 255)",
            boxShadow: "0px 5px 10px rgba(0, 0, 0, 0.475), 0px 0px 15px rgba(0, 0, 255, 0.600)",
          }
            return squareStyle
        }
      }

      const handleClick= () => {
        
      }
    
      
    return (
        <div className='initial-square' style={setInitialStyle()} onClick={handleClick}>
        </div>
    )
    
}