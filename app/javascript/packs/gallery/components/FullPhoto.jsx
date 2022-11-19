import React from "react";

const FullPhoto = ({ img, setSelectedImg }) => {
  const imgUrl = `../../../assets/images/${img}.jpg`;
  const handleClick = () => {
    setSelectedImg(undefined);
  };
  const handleLoad = (e) => {
    e.target.scrollIntoView({ behavior: 'smooth', block: 'center' });
  };
  return img !== undefined && (
    <div>
      <img
        src={imgUrl}
        alt=""
        className="full-photo"
        onClick={handleClick}
        onLoad={handleLoad}
      />
    </div>
  );
};

export default FullPhoto;
