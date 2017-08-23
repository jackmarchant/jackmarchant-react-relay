import React from 'react';
import { render } from 'react-dom';
import getStateFromDom from './getStateFromDom';

import { Router } from 'react-router';
import createBrowserHistory from 'history/createBrowserHistory';

import Header from './components/Header';
import Footer from './components/Footer';
import Main from './components/Main';

const App = state => {
  return (
    <div>
      <Header />
      <Main {...state} />
      <Footer />
    </div>
  );
};

const state = getStateFromDom('app-state');
const history = createBrowserHistory();

render(
  <Router history={history}>
    <App {...state} />
  </Router>,
  document.getElementById('root')
);