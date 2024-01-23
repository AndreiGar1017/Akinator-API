window.onload = init;

let players;
let backupplayers;
let questions;
let currentQuestion;
let hits;
let newhits;

const user_mail = localStorage.getItem('user_mail');


async function init(){
    const response = await fetch("http://localhost:3001/api/players/");
    data = await response.json();
    players = data.players;
    questions = data.questions
    backupplayers = [...players];
    displayQuestion();
    const user = await fetch(`http://localhost:3001/api/users/${user_mail}`)
    user_data = await user.json();
    showuserData();
}

  //Eventos en los botones
function onYesAnswer() {
    switch (currentQuestion.question_type) {
    //Nótese que se usa el operador de indexamiento dentro del filter ya que estamos refiriendonos al valor exacto del atributo que está actualmente elegido, pero como no existe el atributo currentQuestion.property entonces evaluamos el arreglo con el valor correspondiente a la property de currentQuestion, además claro, de que la propiedad está en constante cambio por lo que al variar usamos aquel valor perse que randomizamos.
    case 1:
        players = players.filter(player => player[currentQuestion.question_property] >= currentQuestion.pivot);
        this.displayQuestion();
        break;
    case 2:
        if(currentQuestion.question_property === 'dorsal'){
            players = players.filter(player => player.player_number % 2 == 0);
            this.displayQuestion();
        }else{
            players = players.filter(player => player[currentQuestion.question_property] === currentQuestion.randomProperty);
            this.displayQuestion();
        }   
        break;
    case 3:
        this.showResult();
        default:
    break;
    }
}

function onNoAnswer(){
    switch (currentQuestion.question_type) {
    case 1:
            players = players.filter(player => player[currentQuestion.question_property] < currentQuestion.pivot);
            this.displayQuestion();
        break;
    case 2:
        if(currentQuestion.question_property === 'dorsal'){
            players = players.filter(player => player.player_number % 2 != 0);
            this.displayQuestion();
        }else{
            players = players.filter(player => player[currentQuestion.question_property] != currentQuestion.randomProperty);
            this.displayQuestion();
        }   
        break;
    case 3:
        currentQuestion = {};
        players = backupplayers;
        this.displayQuestion();
        default:
        break;
    }
}

function displayQuestion() {
    if(players.length > 1 || players.length===0){
        if(players.length===0){
            currentQuestion = {};
            players = backupplayers;
            this.displayQuestion();
        }
        const index = getRandomInt(questions.length);
        const question = questions[index];

        if(question.question_type == 1){
            const property = question.question_property
            let sortedplayers = players.sort((a,b) => {return a[property] - b[property]})
            let pivot = players[Math.floor(sortedplayers.length/2)][property]
            question.pivot = pivot;
            currentQuestion = question;
            document.getElementById('question').innerHTML = `${question.question_desc.replace('<<n>>', pivot)}` 
        }else{
            const index = getRandomInt(players.length);
            const randomProperty = players[index][question.question_property];
            question.randomProperty = randomProperty
            currentQuestion = question;
            document.getElementById('question').innerHTML = `${question.question_desc.replace('<<n>>', randomProperty)}` 
        }
        
    }else{
        document.getElementById('question').innerHTML = `¿Tú jugador es ${players[0].player_name}?` 
        currentQuestion.question_type = 3;
    }
    
}
    
async function showResult(){
    const elements = document.querySelectorAll(".questionSection");
    for (const element of elements) {
        element.classList.add('d-none')
    }
    document.getElementById('character-name').innerHTML = `Tu jugador es ${players[0].player_name}`
    document.getElementById('pilot-imedad').src = players[0].player_img;
    document.getElementById('pilot-imedad').classList.remove('d-none');

    newhits = user_data.hits + 1
    const data = {
        user_hits:newhits
    };

    const options = {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    };
    await fetch(`http://localhost:3001/api/users/${user_mail}`, options);
}  

function getRandomInt(max) {
    return Math.floor(Math.random() * max);
}  


function showuserData(){
    document.getElementById('hits').innerHTML = `Aciertos: ${user_data.hits}`;
    document.getElementById('user').innerHTML = `Usuario: ${user_data.user_name}`;
}

function logOut(){
    window.location.href = "http://localhost:3001/login"
}