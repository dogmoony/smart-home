const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(bodyParser.json());

// Sample route
app.get("/", (req, res) => {
  res.send("Smart Home Assistant API");
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

//Login Endpoint
app.post("/auth/login", (req, res) => {
  const { username, password } = req.body;
  if (username === "admin" && password === "password") {
    res.json({ message: "Login successful" });
  } else {
    res.status(401).json({ message: "Invalid credentials" });
  }
});

//Logout Endpoint

//Token Refresh Endpoint

//Get Devices Endpoint

//Add Device Endpoint

//Update Device Endpoint

//Delete Device Endpoint

//Control Device Endpoint

//Get Device Status Endpoint

//Get Scenes Endpoint

//Activate Scene Endpoint

//Get Automations Endpoint

//Trigger Automation Endpoint

//Get User Preferences Endpoint

//Update User Preferences Endpoint

//Get Notifications Endpoint

//Acknowledge Notification Endpoint

//Get Integrations Endpoint

//Connect Integration Endpoint
