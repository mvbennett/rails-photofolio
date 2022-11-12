import React from 'react';

import Photo from './Photo';
import FullPhoto from "./FullPhoto";

const Gallery = (
  {
    selectedImg, setSelectedImg, photoCardClass, setPhotoCardClass
  }
) => {
  const photosArray = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  return (
    <div className="full-gallery">
      <div className="gallery">
        {
          photosArray.map((img) => {
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
