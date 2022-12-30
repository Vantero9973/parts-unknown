const quizQuestions = [
  {
    question: (
      <strong style={{ fontSize: "20px" }}>
        Which activity would you most like to do?
      </strong>
    ),
    answers: [
      {
        type: "Mumbai",
        content: <div style={{ fontSize: "18px" }}>Visit Temples 🛕</div>,
      },
      {
        type: "Zurich",
        content: (
          <div style={{ fontSize: "18px" }}>Trek in the mountains ⛰️</div>
        ),
      },
      {
        type: "Castaway Island",
        content: <div style={{ fontSize: "18px" }}>Sunbathe on a beach 🏖️</div>,
      },
      {
        type: "Tokyo",
        content: <div style={{ fontSize: "18px" }}>Explore the city 🏙️</div>,
      },
    ],
  },
  {
    question: (
      <strong style={{ fontSize: "20px" }}>
        Which food are you most likely to try?
      </strong>
    ),
    answers: [
      {
        type: "Zurich",
        content: <div style={{ fontSize: "18px" }}>Tarts 🥧</div>,
      },
      {
        type: "Mumbai",
        content: <div style={{ fontSize: "18px" }}>Curry 🍛</div>,
      },
      {
        type: "Castaway Island",
        content: <div style={{ fontSize: "18px" }}>Tuna 🐟</div>,
      },
      {
        type: "Tokyo",
        content: <div style={{ fontSize: "18px" }}>Sushi 🍣</div>,
      },
    ],
  },
  {
    question: (
      <strong style={{ fontSize: "20px" }}>
        The three words you'd use to describe your ideal vacations are...
      </strong>
    ),
    answers: [
      {
        type: "Mumbai",
        content: (
          <div style={{ fontSize: "18px" }}>
            Educational, cultural, and amusing
          </div>
        ),
      },
      {
        type: "Zurich",
        content: (
          <div style={{ fontSize: "18px" }}>
            Luxurious, slow-paced, and beautiful
          </div>
        ),
      },
      {
        type: "Castaway Island",
        content: (
          <div style={{ fontSize: "18px" }}>Exotic, surprising, and serene</div>
        ),
      },
      {
        type: "Tokyo",
        content: (
          <div style={{ fontSize: "18px" }}>
            Adventurous, fun, and undiscovered
          </div>
        ),
      },
    ],
  },
  {
    question: (
      <strong style={{ fontSize: "20px" }}>
        When it's time for a drink, you reach for...
      </strong>
    ),
    answers: [
      {
        type: "Castaway Island",
        content: <div style={{ fontSize: "18px" }}>Mai Tai cocktail 🍹</div>,
      },
      {
        type: "Zurich",
        content: <div style={{ fontSize: "18px" }}>Glass of wine 🍷</div>,
      },
      {
        type: "Mumbai",
        content: <div style={{ fontSize: "18px" }}>Pint of beer 🍺</div>,
      },
      {
        type: "Tokyo",
        content: <div style={{ fontSize: "18px" }}>Cup of tea 🍵</div>,
      },
    ],
  },
  {
    question: (
      <strong style={{ fontSize: "20px" }}>
        If you had the whole day to yourself, you would roam...
      </strong>
    ),
    answers: [
      {
        type: "Zurich",
        content: <div style={{ fontSize: "18px" }}>Train 🚆</div>,
      },
      {
        type: "Castaway Island",
        content: <div style={{ fontSize: "18px" }}>Boat ⛴️</div>,
      },
      {
        type: "Tokyo",
        content: <div style={{ fontSize: "18px" }}>Subway 🚇</div>,
      },
      {
        type: "Mumbai",
        content: <div style={{ fontSize: "18px" }}>Car 🚘</div>,
      },
    ],
  },
];

export default quizQuestions;
