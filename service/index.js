const express = require("express");
const jwt = require("jsonwebtoken");

const app = express();

app.use(express.json());

const users = [
  {
    name: "leandro",
    password: "123",
  },
  {
    name: "ana",
    password: "123",
  },
];

app.get("/", (request, response) => {
  return response.status(200).send({
    message: "Rota saudavel",
  });
});

const secretKey = "sua_chave_secreta";
app.post("/", (request, response) => {
  const { body } = request;

  const userRegistered = users.find(
    (user) => user.name === body?.name && user.password === body?.password
  );

  if (!userRegistered) {
    return response.status(404).send({
      message: "Usuario não encontrado",
    });
  }

  const payload = {
    sub: userRegistered.name,
    iss: "your-issuer",
    exp: Math.floor(Date.now() / 1000) + 60, // 1 minuto de validade
  };

  const token = jwt.sign(payload, secretKey);

  return response.status(200).send({
    token,
  });
});

app.post("/pedido", (request, response) => {
  return response.status(200).send({
    message: "Usuario válido",
  });
});

app.listen(3333, () => {
  console.log("Servidor iniciado");
});
