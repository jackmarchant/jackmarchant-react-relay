import { Environment, Network, RecordSource, Store } from 'relay-runtime';

function fetchQuery(operation, variables) {
  return fetch('/graphql', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      query: operation.text,
      operationName: operation.name,
      variables,
    }),
  })
    .then(response => response.json())
    .then(({ errors, data }) => {
      if (errors) {
        return { errors };
      }

      return { data };
    });
}

export default new Environment({
  network: Network.create(fetchQuery),
  store: new Store(new RecordSource()),
});