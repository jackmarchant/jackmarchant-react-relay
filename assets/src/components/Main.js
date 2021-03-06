import React from 'react';
import PostList from './PostList';
import PostDetail from './PostDetail';
import { Switch, Route } from 'react-router-dom';

const Main = state =>
  <div className="container">
    <main className="main-content">
      <div className="row">
        <div className="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
          <Switch>
            <Route exact path="/" component={PostList} />
            <Route exact path="/posts" component={PostList} />
            <Route path="/posts/:slug" component={PostDetail} />
          </Switch>
        </div>
      </div>
    </main>
  </div>

export default Main;