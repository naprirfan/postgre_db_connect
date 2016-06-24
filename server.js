const DB_USERNAME = process.env.DB_USERNAME || 'myusername';
const DB_PASSWORD = process.env.DB_PASSWORD || 'veryCoolPassword12';

var express = require('express');
var app = express();
var massive = require("massive");
var connectionString = "postgres://"+ DB_USERNAME +":"+ DB_PASSWORD +"@localhost/somedb";
var massiveInstance = massive.connectSync({connectionString : connectionString});

// View related
app.engine('ejs', require('ejs-mate'));
app.set('views',__dirname + '/views');
app.set('view engine', 'ejs');

app.set('db', massiveInstance);

// This query works
app.get('/', function(req,res) {
  var db = req.app.get('db');
  var query = 'SELECT a.ArtistId as artistid, a.Name as artistname, ' + 
    "array_to_string(array_agg(s.Name), ',') as skillname " + 
    'FROM Artists a ' +
    'INNER JOIN ArtistsSkills arts ON arts.ArtistId = a.ArtistId ' +
    'INNER JOIN Skills s ON arts.SkillId = s.SkillId ' +
    'GROUP BY a.ArtistId ORDER BY a.Name';
  
  db.run(query, function(err, rows) {
    res.render('partial/index', {data: rows});
  });
});

// This is where I can't call the editArtist function
app.get('/editRandomArtist', function(req, res) {
  // Set variables
  var db = req.app.get('db');
  
  // function's argument : ArtistName, InfoMarkdown, ArtistId, Skills
  var values = ['the name', 'some markdown', 100, [1,2,3]];

  db.editArtist(values, function(err, result) {
    if (err) {
      console.log(err);
      res.status(500).end('Database query error');
      return;
    }

    console.log(result);
    // Success! 
    res.end('success!!!');
  });
});

app.listen(5000, function() {  
  console.log('listening on port 5000');
});