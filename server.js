const app = require("express")();

app.get("/", (req, res) => {
  res.send("asdf");
});

app.listen(8000, () => {
  console.log("listening on port 8000");
});
