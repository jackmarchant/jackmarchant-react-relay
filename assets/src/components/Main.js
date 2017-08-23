import React from 'react';
import PostList from './PostList';
import PostDetail from './PostDetail';
import { Switch, Route } from 'react-router-dom';

const Main = state =>
  <div className="container">
    <main className="main-content">
      <Switch>
        <Route exact path="/" component={PostList} />
        <Route exact path="/posts" component={PostList} />
        <Route path="/posts/:slug" component={PostDetail} />
      </Switch>
    </main>
  </div>

export default Main;