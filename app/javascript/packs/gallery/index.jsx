import React from 'react';
import ReactDOM from 'react-dom/client';

import App from './components/App';

const container = document.getElementById('root');
const photos = Object.values(JSON.parse(root.dataset.photos));

if (container) {
  const root = ReactDOM.createRoot(container);
  root.render(<App photos={photos} />);
}
