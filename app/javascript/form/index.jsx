import React from 'react';
import ReactDOM from 'react-dom/client';

import New from './components/New';

const container = document.getElementById('root');

if (container) {
  const root = ReactDOM.createRoot(container);
  root.render(<New />);
}
