import React from 'react';
import { Link } from 'react-router-dom';
import { getPosts } from '../post-service';

const PostItem = ({slug, title, body}) =>
  <div className="post-preview">
    <Link to={`/posts/${slug}`}>
      <h2 className="post-title">{title}</h2>
    </Link>
    <div className="post-body">{body.replace(/(<([^>]+)>)/ig,"").substring(0, 250)}...</div>
  </div>

class PostList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      posts: [],
    };
  }

  componentDidMount() {
    getPosts().then(response => {
      this.setState(() => ({
        posts: response.data.posts
      }));
    });
  }

  render() {
    const { posts } = this.state;

    if (!posts.length) {
      return null;
    }

    return (
      <div className="post-list">
        {posts.map((post, i) => <PostItem key={i} {...post} />)}
      </div>
    );
  }
}

export default PostList;