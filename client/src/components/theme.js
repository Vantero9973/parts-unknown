const theme = {
    container: {
      position: "absolute",
      marginBottom: "10px",
    },

    input: {
      width: "40vw",
      height: "8vh",
      border: "2px solid #1c1c1e",
      borderRadius: "50px",
      fontSize: "32px",
      padding: "25px",
      background: "#2c2c2e",
      color: "#dadada"
    },
    
    inputFocused: {
      outline: "none"
    },
    suggestionsContainer: {
      display: "none"
    },
    suggestionsContainerOpen: {
      display: "block",
      position: "absolute",
      top: 80,
      width: "40vw",
      border: "1px solid white",
      backgroundColor: "white",
      fontFamily: "Helvetica, sans-serif",
      fontWeight: 300,
      fontSize: 16,
      zIndex: 2,
    },
    suggestionsList: {
      margin: 0,
      padding: 0,
      listStyleType: "none"
    },
    suggestion: {
      cursor: "pointer",
      padding: "10px 20px"
    },
    suggestionHighlighted: {
      backgroundColor: "#dadada"
    }
  };
  
  export default theme;
  