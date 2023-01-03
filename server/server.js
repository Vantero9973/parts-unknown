// sk_test_51LnUKJDM1jwCEz8OJG69szv032rIo4X0WrFMaXrqxu9g8fdohsL1y54JEUhFUKrqoBquVjN3AzpIFyrbN915bgcd00O5hqoGCJ
// Coffee: price_1LnUTFDM1jwCEz8OGoOSXiSM
// Sunglasses: price_1LnUTxDM1jwCEz8OAqHYTwKQ
// Camera: price_1LnUUoDM1jwCEz8OvxIcJ7to
// app.use(cors());
// var cors = require("cors");
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
  /*
    req.body.items
    [
        {
            id: 1,
            quantity: 3
        }
    ]

    stripe wants
    [
        {
            price: 1,
            quantity: 3
        }
    ]
    */
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

// const express = require("express");
// const app = express();
// const { resolve } = require("path");
// // Replace if using a different env file or config
// const env = require("dotenv").config({ path: "./.env" });
// const cors = require("cors");
// app.use(express.json());
// app.use(
//   cors({
//     origin: "http://localhost:4242",
//   })
// );

// const stripe = require("stripe")(process.env.STRIPE_SECRET_KEY, {
//   apiVersion: "2022-08-01",
// });

// app.use(express.static(process.env.STATIC_DIR));

// app.get("/", (req, res) => {
//   const path = resolve(process.env.STATIC_DIR + "/public/index.html");
//   res.sendFile(path);
// });

// app.get("/config", (req, res) => {
//   res.send({
//     publishableKey: process.env.STRIPE_PUBLISHABLE_KEY,
//   });
// });

// app.post("/create-payment-intent", async (req, res) => {
//   try {
//     const paymentIntent = await stripe.paymentIntents.create({
//       currency: "USD",
//       amount: 1999,
//       automatic_payment_methods: { enabled: true },
//     });

//     // Send publishable key and PaymentIntent details to client
//     res.send({
//       clientSecret: paymentIntent.client_secret,
//     });
//   } catch (e) {
//     return res.status(400).send({
//       error: {
//         message: e.message,
//       },
//     });
//   }
// });

// app.listen(6900, () =>
//   console.log(`Node server listening at http://localhost:6900`)
// );
