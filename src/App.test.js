import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';


var assert = require('assert');


assert.equal("Hello".length, 5);

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);  
});
