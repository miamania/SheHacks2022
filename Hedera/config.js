const firebaseConfig = {
  apiKey: "AIzaSyAR5E3hr8ypCMRw5tUu6jr50V4zc8QwQto",
  authDomain: "codejam-94fb6.firebaseapp.com",
  databaseURL: "https://codejam-94fb6-default-rtdb.firebaseio.com",
  projectId: "codejam-94fb6",
  storageBucket: "codejam-94fb6.appspot.com",
  messagingSenderId: "1080907631512",
  appId: "1:1080907631512:web:f6c6e32197f5b1e87139ed",
  measurementId: "G-0QHXVF094N"
};
 
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
var firebaseRef = firebase.database().ref('names');

document.querySelector('#send').addEventListener('click', ()=>{
    const name = document.getElementById('name').value;
    firebaseRef.push(name, main());
});