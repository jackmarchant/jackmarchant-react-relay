import React from 'react';
import { Link } from 'react-router-dom';

const PostDetail = ({ title, body }) =>
  <div>
    <div className="row">
      <div className="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
        <div className="post-title">
          <h2>{title}</h2>
        </div>
        <div className="post-body" dangerouslySetInnerHTML={{__html: body}} />
      </div>
    </div>
    <div className="actions text-center">
      <Link className="btn btn-default" to="/">See all posts</Link>
    </div>
  </div>

export default PostDetail;