import React from 'react';
import { Link, withRouter } from 'react-router-dom';

import { graphql, QueryRenderer } from 'react-relay';
import modernEnvironment from '../relay-environment';
import RelayHoc from '../relay-hoc';

const PostDetail = ({viewer: { title, body }}) => {
  return (
    <div>
      <div className="post-title">
        <h2>{title}</h2>
      </div>
      <div className="post-body" dangerouslySetInnerHTML={{__html: body}} />
      <div className="actions text-center">
        <Link className="btn btn-default" to="/">See all posts</Link>
      </div>
    </div>
  );
};

const PostDetailRenderer = ({ match: { params }}) => {
  const query = graphql`
    query PostDetailQuery($slug: String!) {
      post(slug: $slug) {
        id
        slug
        title
        body
      }
    }
  `;

  return (
    <QueryRenderer
     environment={modernEnvironment}
     query={query}
     variables={{ slug: params.slug }}
     render={RelayHoc(PostDetail, 'post')}
    />
  );
};

export default PostDetailRenderer;