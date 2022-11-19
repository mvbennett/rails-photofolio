import React from 'react';
import ReactDOM from 'react-dom/client';

// import '../assets/stylesheets/application.scss';

import App from './components/App';

const container = document.getElementById('root');
const props = Object.values(JSON.parse(root.dataset.photos));

if (container) {
  const root = ReactDOM.createRoot(container);
  root.render(<App props={props}/>);
}
