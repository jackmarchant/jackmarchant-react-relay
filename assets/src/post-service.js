export const getPosts = () => {
  return Promise.resolve({
    data: {
      posts: [
        {
          title: 'hello world',
          body: '<p>hello what is going on?!?</p>',
          slug: 'my-post',
        }
      ]
    }
  });
};

export const getPostBySlug = slug => {
  return Promise.resolve({
    data: {
      post: {
        title: 'hello',
        body: 'post body that resolves here',
      }
    }
  })
};