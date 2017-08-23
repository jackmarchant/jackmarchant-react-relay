import React from 'react';
import PropTypes from 'prop-types';

const RelayHoc = (Component, propName = null) => {
  const RelayWrapper = ({ error, props }) => {
    if (props) {
      return <Component viewer={propName ? props[propName] : props} />;
    }

    if (error) {
      return <div>Something went wrong...</div>;
    }

    return (
      <div>Loading posts...</div>
    );
  };

  RelayWrapper.propTypes = {
    error: PropTypes.object,
    props: PropTypes.object,
  };

  RelayWrapper.displayName = `RelayHoc(${Component.displayName || Component.name || 'Component'})`;

  return RelayWrapper;
};

export default RelayHoc;