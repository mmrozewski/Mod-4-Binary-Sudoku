import React from 'react'

export default function Square(props) {

    const { color, glow, changeColor } = props;

    const activeSquareStyle = {
      backgroundColor: color,
      boxShadow: glow,
      transition: "300ms"
    }

    

    const handleClick = () => {
      changeColor();
    }

    
      
        return (
            <div className='square' style={activeSquareStyle} onClick={handleClick}>
            </div>
        )
    
}
