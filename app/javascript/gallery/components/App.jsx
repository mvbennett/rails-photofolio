import React, { useState } from 'react';

import Gallery from "./Gallery";

const App = ({photos}) => {
  const [selectedImg, setSelectedImg] = useState();
  const [photoCardClass, setPhotoCardClass] = useState('sm-photo-card');

  return (
    <div className="container">
      <Gallery
        photos={photos}
        setSelectedImg={setSelectedImg}
        selectedImg={selectedImg}
        photoCardClass={photoCardClass}
        setPhotoCardClass={setPhotoCardClass}
      />
    </div>
  );
};

export default App;
