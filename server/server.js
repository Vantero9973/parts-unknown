require("dotenv").config();
const express = require("express");
const stripe = require("stripe")(process.env.REACT_APP_STRIPE_SECRET_KEY);
const app = express();
app.use(express.static("public"));
app.use(express.json());
const cors = require("cors");
app.use(
  cors({
    origin: "http://localhost:4242",
  })
);

app.post("/checkout", async (req, res) => {
  console.log(req.body);
  const items = req.body.items;
  let lineItems = [];
  items.forEach((item) => {
    lineItems.push({
      price: item.id,
      quantity: item.quantity,
    });
  });

  const session = await stripe.checkout.sessions.create({
    line_items: lineItems,
    mode: "payment",
    success_url: "http://localhost:4242/success",
    cancel_url: "http://localhost:4242/cancel",
  });

  res.send(
    JSON.stringify({
      url: session.url,
    })
  );
});

app.listen(6900, () => console.log("Listening on port 6900!"));
