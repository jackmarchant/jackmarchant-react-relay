export default nodeId => {
  let initialState = {};

  if (!nodeId) {
    return initialState;
  }

  const node = document.getElementById(nodeId);

  if (!node) {
    return initialState;
  }

  if (node.textContent.length === 0) {
    return initialState;
  }

  return JSON.parse(decodeURIComponent(node.textContent.trim()));
};