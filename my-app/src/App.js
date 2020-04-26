import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Cloud DevOps by Pablo Albaladejo
        </p>
        <a
          className="App-link"
          href="https://github.com/pablo-albaladejo/cloud-devops"
          target="_blank"
          rel="noopener noreferrer"
        >
          Git Repository
        </a>
      </header>
    </div>
  );
}

export default App;
