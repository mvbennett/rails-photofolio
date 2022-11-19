import React from "react";

const FullPhoto = ({ img, setSelectedImg }) => {
  const handleClick = () => {
    setSelectedImg(undefined);
  };
  const handleLoad = (e) => {
    e.target.scrollIntoView({ behavior: 'smooth', block: 'center' });
  };
  return img !== undefined && (
    <div>
      <img
        src={img}
        alt=""
        className="full-photo"
        onClick={handleClick}
        onLoad={handleLoad}
      />
    </div>
  );
};

export default FullPhoto;
