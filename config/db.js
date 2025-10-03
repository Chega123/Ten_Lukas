const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/likitas', {
  useNewUrlParser: true,
  useUnifiedTopology: true
})
.then(() => console.log(" MongoDB Conectado"))
.catch((err) => console.error(" Error en MongoDB:", err));

module.exports = mongoose;
