import React from 'react';

import Photo from './Photo';
import FullPhoto from "./FullPhoto";

const Gallery = (
  {
    selectedImg, setSelectedImg, photoCardClass, setPhotoCardClass, photos
  }
) => {
  return (
    <div className="full-gallery">
      <div className="gallery">
        {
          photos.map((img) => {
            let component;
            if (img !== selectedImg) {
              component = (
                <div key={img}>
                  <Photo
                    img={img}
                    setSelectedImg={setSelectedImg}
                    selectedImg={selectedImg}
                    photoCardClass={photoCardClass}
                    setPhotoCardClass={setPhotoCardClass}
                  />
                </div>
              );
            } else {
              component = (
                <div className="full-div" key={img}>
                  <FullPhoto
                    img={selectedImg}
                    setSelectedImg={setSelectedImg}
                  />
                </div>
              );
            }
            return component;
          })
        }
      </div>
    </div>
  );
};

export default Gallery;
