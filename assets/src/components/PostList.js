import React from 'react';
import { Link } from 'react-router-dom';

import { graphql, QueryRenderer } from 'react-relay';
import modernEnvironment from '../relay-environment';
import RelayHoc from '../relay-hoc';

const PostItem = ({slug, title, body}) =>
  <div className="post-preview">
    <Link to={`/posts/${slug}`}>
      <h2 className="post-title">{title}</h2>
    </Link>
    <div className="post-body">{body.replace(/(<([^>]+)>)/ig,"").substring(0, 250)}...</div>
  </div>

const PostList = ({ viewer }) => {
  return (
    <div className="post-list">
      {viewer.map((post, i) => <PostItem key={i} {...post} />)}
    </div>
  );
};

const PostListRenderer = () => {
  const query = graphql`
    query PostListQuery {
      posts {
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
     render={RelayHoc(PostList, 'posts')}
    />
  );
};

export default PostListRenderer;